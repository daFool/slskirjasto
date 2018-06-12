#!/bin/sh
which composer >/dev/null 2>/dev/null
if [ $? -ne 0 ]; then
    echo "You should install composer! Composer is required to pull in vendor code!"
    exit -1;
fi
which phpdox >/dev/null 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Phpdox is used for documentation generation. Please install it."
fi
which phpunit >/dev/null 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Phpunit is used for testing - nah who am I kidding, will be used. Please install it."
fi
which phpdoc >&/dev/null
if [ $? -ne 0 ]; then
	echo "phpDocumentor is not installed. Please install it."
fi
