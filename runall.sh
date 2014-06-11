echo "create required folders"
./create-folders.sh
echo "grab all archives from archive-sources"
./grab-archives.sh

echo "run windup"
./jboss-windup.sh

echo "run tattletale"
./jboss-tattletale.sh

echo "Remove empty folders"
./remove-empty-tattletale-report-folders.sh
./remove-empty-windup-report-folders.sh

