:: remove vendored copies of cloudpickle and ujson, 
:: these are now runtime dependencies of the package.
rd /q /s "%SRC_DIR%\srsly\cloudpickle"
rd /q /s "%SRC_DIR%\srsly\ujson"
rd /q /s "%SRC_DIR%\srsly\tests\cloudpickle"
rd /q /s "%SRC_DIR%\srsly\tests\ujson"
if errorlevel 1 exit 1

"%PYTHON%" -m pip install . --no-deps -vv
if errorlevel 1 exit 1
