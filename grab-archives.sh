if [ -d ./archives/ ]
then
    echo "Deleting ./archives/ directory to remove existing archives"
    rm -rf ./archives/
    echo "Deleted ./archives/ directory to remove existing archives"
fi

echo "(re)creating ./archives/ directory"
mkdir archives
echo "(re)created ./archives/ directory"

echo "Grabbing all ear and war archives from the ./archive-sources/ folder and moving them to the ./archive/ folder"
find ./archive-sources/ -type f -name "*.war" -exec cp {} ./archives/ \;
find ./archive-sources/ -type f -name "*.ear" -exec cp {} ./archives/ \;
echo "Finished grabbing all ear and war archives from the ./archive-sources/ folder and moving them to the ./archive/ folder"


