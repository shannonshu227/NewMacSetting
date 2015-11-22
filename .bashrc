export
PATH=$HOME/bin:/home/y/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11R6/bin:/usr/local/sbin:/usr/local/mysql/bin
export M2_HOME=<path-to-apache-maven-3.2.3>
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
export MAVEN_OPTS="-Xms256m -Xmx512m"
export JAVA_HOME=`/usr/libexec/java_home`
export PATH=$JAVA_HOME/bin:$PATH

export SVN_EDITOR=vi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[033[00m\] $ "
export PS1="\\[$(tput setaf 2)\\][\\u@\\h-${YR}:\\w ]\$(parse_git_branch)$ \\[$(tput sgr0)\\]"

if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi
