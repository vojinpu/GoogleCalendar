@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  GoogleCalendar startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and GOOGLE_CALENDAR_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\GoogleCalendar-1.0.jar;%APP_HOME%\lib\appengine-api-1.0-sdk-1.5.0.jar;%APP_HOME%\lib\appengine-api-labs-1.7.0.jar;%APP_HOME%\lib\gson-2.8.1-javadoc.jar;%APP_HOME%\lib\gson-2.2.2.jar;%APP_HOME%\lib\commons-io-1.4.jar;%APP_HOME%\lib\servlet-api-2.5.jar;%APP_HOME%\lib\appengine-api-1.0-sdk-1.9.54.jar;%APP_HOME%\lib\appengine-api-labs-1.7.4.jar;%APP_HOME%\lib\google-cloud-datastore-1.3.1.jar;%APP_HOME%\lib\google-api-client-1.22.0.jar;%APP_HOME%\lib\google-oauth-client-jetty-1.22.0.jar;%APP_HOME%\lib\google-api-services-calendar-v3-rev254-1.22.0.jar;%APP_HOME%\lib\google-cloud-core-1.3.1.jar;%APP_HOME%\lib\google-cloud-core-http-1.3.1.jar;%APP_HOME%\lib\datastore-v1-protos-1.3.0.jar;%APP_HOME%\lib\datastore-v1-proto-client-1.3.0.jar;%APP_HOME%\lib\grpc-google-common-protos-0.1.15.jar;%APP_HOME%\lib\google-oauth-client-1.22.0.jar;%APP_HOME%\lib\google-http-client-jackson2-1.22.0.jar;%APP_HOME%\lib\guava-jdk5-17.0.jar;%APP_HOME%\lib\google-oauth-client-java6-1.22.0.jar;%APP_HOME%\lib\jetty-6.1.26.jar;%APP_HOME%\lib\guava-20.0.jar;%APP_HOME%\lib\joda-time-2.9.2.jar;%APP_HOME%\lib\json-20160810.jar;%APP_HOME%\lib\api-common-1.1.0.jar;%APP_HOME%\lib\gax-1.5.0.jar;%APP_HOME%\lib\protobuf-java-util-3.3.1.jar;%APP_HOME%\lib\proto-google-common-protos-0.1.15.jar;%APP_HOME%\lib\proto-google-iam-v1-0.1.15.jar;%APP_HOME%\lib\google-auth-library-credentials-0.7.0.jar;%APP_HOME%\lib\google-auth-library-oauth2-http-0.7.0.jar;%APP_HOME%\lib\google-http-client-1.22.0.jar;%APP_HOME%\lib\google-http-client-appengine-1.22.0.jar;%APP_HOME%\lib\google-http-client-jackson-1.22.0.jar;%APP_HOME%\lib\google-http-client-protobuf-1.20.0.jar;%APP_HOME%\lib\jackson-core-2.1.3.jar;%APP_HOME%\lib\jetty-util-6.1.26.jar;%APP_HOME%\lib\servlet-api-2.5-20081211.jar;%APP_HOME%\lib\jsr305-3.0.0.jar;%APP_HOME%\lib\auto-value-1.2.jar;%APP_HOME%\lib\threetenbp-1.3.3.jar;%APP_HOME%\lib\gson-2.7.jar;%APP_HOME%\lib\grpc-stub-1.4.0.jar;%APP_HOME%\lib\grpc-protobuf-1.4.0.jar;%APP_HOME%\lib\grpc-core-1.4.0.jar;%APP_HOME%\lib\grpc-protobuf-lite-1.4.0.jar;%APP_HOME%\lib\error_prone_annotations-2.0.19.jar;%APP_HOME%\lib\grpc-context-1.4.0.jar;%APP_HOME%\lib\instrumentation-api-0.4.2.jar;%APP_HOME%\lib\httpclient-4.0.1.jar;%APP_HOME%\lib\httpcore-4.0.1.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\commons-codec-1.3.jar;%APP_HOME%\lib\jackson-core-asl-1.9.11.jar;%APP_HOME%\lib\protobuf-java-3.3.1.jar

@rem Execute GoogleCalendar
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GOOGLE_CALENDAR_OPTS%  -classpath "%CLASSPATH%" com.full.Quickstart %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GOOGLE_CALENDAR_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GOOGLE_CALENDAR_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
