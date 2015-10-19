export GRADLE_HOME=/usr/local/gradle/gradle-2.7
PATH=$GRADLE_HOME/bin:$PATH
export PATH
# Turn on Gradle daemon by default
export GRADLE_OPTS="-Dorg.gradle.daemon=true"
