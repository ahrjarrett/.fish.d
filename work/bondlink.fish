#################
### VARIABLES ###
#################
set --export --global  PIP_PACKAGE_PATH  /Users/aj/Library/Python/3.8/lib/python/site-packages
set --export --global  PYTHON3_PATH      /Users/aj/Library/Python/3.8/bin
set --export --global  JAVA_HOME         /Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home
set --export --global  $RUBY_PATH        /opt/homebrew/opt/ruby@2.7/bin

#####################
### ABBREVIATIONS ###
#####################
abbr -a -U  bl        /src/bondlink
abbr -a -U  mm        /src/oddjob/make_migration.sh
abbr -a -U  blreboot  'cd /src/bondlink && npm run nuclear-option && npm run att'
abbr -a -U  bldev     'cd /src/bondlink && \
                          npx concurrently \
                          -n backend,corporate   \
                          -c white.bgRed.bold,white.bgBlue.bold \
                          "cd /src/bondlink && sbt fswatchRun" \
                          "cd /src/bondlink/corporate && npm run dev"'

############
### PATH ###
############
fish_add_path  $PIP_PACKAGE_PATH
fish_add_path  $PYTHON3_PATH
fish_add_path  $JAVA_HOME/bin
fish_add_path  $RUBY_PATH
