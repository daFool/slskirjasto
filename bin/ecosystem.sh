#!/bin/sh

function haveIt {
    which $1 >& /dev/null
    if [ $? -ne 0 ]; then
        echo $2
        exit -1;
    fi
}

mepath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
mepath=${mepath%/*}

if [ ! -L "$mepath/web/SLS/controller" ]; then
	echo "Hmm. No symlink $mepath/web/SLS/controller to $mepath/web/controller?"
	echo "I'm a coward. Please do symlink for me. The F3 will not find classes without it!"
	exit -1;
fi

haveIt composer         "You should install composer! Composer is required to pull in vendor code!"
haveIt phpdox           "Phpdox is used for documentation generation. Please install it."
haveIt phpunit          "Phpunit is used for testing - nah who am I kidding, will be used. Please install it."
haveIt phpdoc           "phpDocumentor is not installed. Please install it."
haveIt pdepend          "pdepend is not installed. Please install it."
haveIt phpcpd           "phpcpd is not installed."
haveIt phploc           "phploc is not installed."
haveIt phpmd            "phpmd is not installed."
haveIt ant              "Come on! Ant is not installed. Try harder!"
haveIt sonar-scanner    "No sonar-scanner, are you kidding me?"

if [ -z "$SONARLOGIN" ]; then
	echo "Sonarqube can't login without env $SONARLOGIN set!"
	exit -1
fi
haveIt beard            "Beard. Just say no thanks."
