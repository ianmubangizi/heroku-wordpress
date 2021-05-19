#!/usr/bin/bash

if [ ! -d "public" ] then
    mkdir public
fi

cp -R vendor/wordpress/wordpress/* public

if [ -d \"vendor/wordpress/themes/wp-content/themes\" ] then 
    cp -R vendor/wordpress/themes/wp-content/themes/* public/wp-content/themes 
fi

if [ -d \"vendor/wordpress/plugins/wp-content/plugins\" ] then 
    cp -R vendor/wordpress/plugins/wp-content/plugins/* public/wp-content/plugins
fi

cp -R src/* public