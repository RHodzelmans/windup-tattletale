#DIR="/folder/containing/your/ears_and_wars"
#TARGET_DIR="/folder/for/your/results"
#PKG="at"
DIR="./archives/"
TARGET_DIR="./windup-reports"
PKG="com.acme"

#WINDUP_CLI_JAR="/opt/program/windup-cli-0.7.0/windup-cli.jar"
#LOG_FILE="windup.log"
WINDUP_CLI_JAR="./windup-cli/windup-cli.jar"
LOG_FILE="windup.log"

# Search all ear files and sort them by size
# find * /path/to/folder -printf "%s %p\n" | grep "\.ear$" | sort

echo "Windup Start `date`" 2>&1 > ${LOG_FILE}
echo "# WARs: `find $DIR | grep "\.war$" | wc -l`" 2>&1 >> ${LOG_FILE}
#echo "# JARs: `find $DIR | grep "\.jar$" | wc -l`" 2>&1 >> ${LOG_FILE}
echo "# EARs: `find $DIR | grep "\.ear$" | wc -l`" 2>&1 >> ${LOG_FILE}

for FILE in `find $DIR | grep "\.[w,e]ar$"`
do
    echo "$FILE" 2>&1 >> ${LOG_FILE}
    TARGET="${TARGET_DIR}/${FILE}-doc"
    
    COMMAND="mkdir -p ${TARGET}"
    echo "${COMMAND}" >> ${LOG_FILE}
    eval "${COMMAND}"

    COMMAND="java -jar ${WINDUP_CLI_JAR} -fetchRemote true -javaPkgs ${PKG} -input ${FILE} -output ${TARGET} 2>&1 >> ${LOG_FILE}"
    echo "${COMMAND}" >> ${LOG_FILE}
    eval "${COMMAND}"
done

echo "Windup Stop `date`" 2>&1 >> ${LOG_FILE}
