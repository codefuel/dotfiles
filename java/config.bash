export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_6_HOME=$(/usr/libexec/java_home -v1.6)
export IDEA_JDK=${JAVA7_HOME}

setjdk jdk1.7.0_09 &>> /dev/null

conditionally_prefix_path "${JAVA_HOME}bin"
