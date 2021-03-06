alias cdad="cd ~/_code/git/AppDirect/Appdirect/"
alias cdapp="cd ~/_code/git/AppDirect/AppDirect/appdirect-parent/"

alias mipl="cdapp;mvn install -pl '!appdirect' -Dmaven.test.skip=true -DskipTests=true"
alias mcits="cdapp;mvn clean install -Dmaven.test.skip=true -DskipTests=true"

alias vpn='echo -n [user.password] | sudo openconnect --user=[user.name] --passwd-on-stdin --authgroup=Employee batman.appdirect.com'
alias vpni='echo -n [user.password] | sudo openconnect --user=[user.name] --passwd-on-stdin --authgroup=Employee iceman.appdirect.com'

alias vmup="cdad;vagrant up dev"
alias vmhalt="cdad;vagrant halt dev"
alias srvup="cdapp;mvn tomcat7:run"
alias srvupdebug="cdapp;mvnDebug tomcat7:run"
alias allup="vpn;vmup;srvup"

# Git: Download latest changes from master and update my own origin
alias gitmergeupstream='cdad;git fetch upstream; git merge upstream/master;git push origin master'

# Front-end: Hotload CSS Changes
alias hotloadcss='cdapp;cd appdirect/;gulp build:css watch:css'

# Front-end: Hotload Javascript changes
alias hotloadjs='cdapp;cd appdirect/;gulp watch:legacy'