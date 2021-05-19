#!/usr/bin/bash

public = "../public"
vendor = "../vendor/wordpress"
wordpress = "$vendor/wordpress"
themes = "$wordpress/themes/wp-content/themes"
plugins = "$wordpress/plugins/wp-content/plugins"

if [ ! -d $public ] then
    mkdir $public
fi

cp -R "../src/*" $public
cp -R "$wordpress/*" $public

if [ -d $themes ] then 
    cp -R "$themes/*" "$public/wp-content/themes"
fi

if [ -d $plugins ] then
    cp -R "$plugins/*" "$public/wp-content/plugins"
fi