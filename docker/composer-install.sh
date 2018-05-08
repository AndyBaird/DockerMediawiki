#!/bin/bash
cd /tmp
curl -sS http://getcomposer.org/installer | php -- --filename=composer
chmod a+x composer
mv composer /usr/local/bin/composer