echo "Build Code"
echo ${WORKSPACE}

build_pipeline()
{

  echo "Creating an Egg file"
  python3 --version
  python3 setup.py bdist_egg clean --all
  if [ $? -ne 0 ]
  then
    echo "[$(date)] Error: egg file creation failed!"
    exit 1
  else
    echo "[$(date)] Info: egg file created successfully!"
    exit 0
  fi

}

build_pipeline

