XCODEBUILD?=$(shell which xcodebuild)
TARGET_NAME?=HOGEFuga
LIB_NAME:=lib${TARGET_NAME}.a
PROJECT_NAME?=${TARGET_NAME}.xcodeproj
BUILD_DIR:=./
CONFIGURATION?=Release

all:

libHOGEFuga.a: libHOGEFugaPhoneos.a libHOGEFugaPhonesimulator.a
	lipo -create -output $@ $^
	rm -rf build/ Release-*/

libHOGEFugaPhoneos.a:
	${XCODEBUILD} -target ${TARGET_NAME} -project ${PROJECT_NAME} -configuration ${CONFIGURATION} -sdk iphoneos -arch armv7 -arch armv7s -arch arm64 clean build ONLY_ACTIVE_ARCH=NO BUILD_DIR="${BUILD_DIR}"
	mv ${BUILD_DIR}/${CONFIGURATION}-iphoneos/${LIB_NAME} $@

libHOGEFugaPhonesimulator.a:
	${XCODEBUILD} -target ${TARGET_NAME} -project ${PROJECT_NAME} -configuration ${CONFIGURATION} -sdk iphonesimulator -arch i386 -arch x86_64 clean build ONLY_ACTIVE_ARCH=NO BUILD_DIR="${BUILD_DIR}"
	mv ${BUILD_DIR}/${CONFIGURATION}-iphonesimulator/${LIB_NAME} $@

clean:
	rm *.a
