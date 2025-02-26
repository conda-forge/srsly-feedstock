:: remove vendored copies of cloudpickle and ujson, 
:: these are now runtime dependencies of the package.
rd /q /s "%SRC_DIR%\srsly\srsly\cloudpickle"
rd /q /s "%SRC_DIR%\srsly\srsly\ujson"
rd /q /s "%SRC_DIR%\srsly\srsly\tests\cloudpickle"
rd /q /s "%SRC_DIR%\srsly\srsly\tests\ujson"
if errorlevel 1 exit 1

"%PYTHON%" -m pip install . --no-deps -vv
if errorlevel 1 exit 1
