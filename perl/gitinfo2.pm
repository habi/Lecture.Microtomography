sub git_info_2 {

    # get file content as a string
    my $get_file_content = sub {
        my ($f)= @_;

        # do not separate the reads per line
        local $/ = undef;

        open FILE, $f or return "";
        $string = <FILE>;

        close FILE;
        return $string;
    };

    # compare two files`
    my $cmp = sub {
        my($a,$b) = @_;

        return $get_file_content->($a) ne $get_file_content->($b);
    };

    my $RELEASE_MATCHER = "[0-9]*.*";

    if(%GI2TM_OPTIONS){
        if(exists $GI2TM_OPTIONS{"RELEASE_MATCHER"}){
            $RELEASE_MATCHER = $GI2TM_OPTIONS{"RELEASE_MATCHER"};
        }
    }

    # When running in a sub-directories of the repo
    my $REPOBASE = `git rev-parse --show-toplevel`;
    $REPOBASE =~ s/\s+$//;

    my $GITDIR = "$REPOBASE/.git";

    my $GIN = "gitHeadLocal.gin";
    my $NGIN = "$GIN.new";

    # if(length(`git status --porcelain`) == 0){
    # Get the first tag found in the history from the current HEAD
    my $FIRSTTAG = `git describe --tags --always --dirty='-*'`;
    $FIRSTTAG =~ s/\s+$//;

    # Get the first tag in history that looks like a Release
    my $RELTAG = `git describe --tags --long --always --dirty='-*' --match '$RELEASE_MATCHER'`;
    $RELTAG =~ s/\s+$//;

    # Hoover up the metadata
    my $metadata =`git --no-pager log -1 --date=short --decorate=short --pretty=format:"shash={%h}, lhash={%H}, authname={%an}, authemail={%ae}, authsdate={%ad}, authidate={%ai}, authudate={%at}, commname={%an}, commemail={%ae}, commsdate={%ad}, commidate={%ai}, commudate={%at}, refnames={%d}, firsttagdescribe={$FIRSTTAG}, reltag={$RELTAG} " HEAD`;

    open(my $fh,'>',$NGIN);
    print $fh "\\usepackage[".$metadata."]{gitexinfo}\n";
    close $fh;
    # }else{
    #     print "GIT UNCLEAN\n";
    # }

    $cmp->($GIN,$NGIN    );

    if((-e $GIN || -e $NGIN) && $cmp->($GIN, $NGIN)) {
            print "Status changed, request recompilation\n";
            $go_mode = 1;
            unlink($GIN);
            rename($NGIN, $GIN);
    } else {
        unlink($NGIN);
    }
    print "The gitinfo function is done working!"
}

git_info_2();
