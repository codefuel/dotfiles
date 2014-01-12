export SCALA_HOME="/opt/scala"
export PLAY_HOME="/opt/play"
export SBT_HOME="/opt/sbt"

conditionally_prefix_path "${SCALA_HOME}/bin"
conditionally_prefix_path "${PLAY_HOME}"
conditionally_prefix_path "${SBT_HOME}/bin"
