#IN="/folder/containing/your/ears"
#OUT="/folder/for/your/results"
IN="./archives/"
OUT="./tattletale-reports"

TATTLETALE_JAR_FILE="./tattletale-1.1.2.Final/tattletale.jar"

for FILE in `find $IN | grep "\.[w,e]ar$"`
do
  DIR=$(basename $FILE)
  DIR="$OUT/$DIR-tattletale"

  COMMAND="mkdir -p $DIR"
  echo "${COMMAND}"
  eval "${COMMAND}"

  COMMAND="java -Xmx512m -jar ${TATTLETALE_JAR_FILE} ${FILE} ${DIR}"
  echo "${COMMAND}"
  eval "${COMMAND}"
done
