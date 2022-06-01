# RobotFramework Sample

A small example on how to implement a robot framework automated tests for IOS and Android.  

The code structure used here allows writing a single testcase for both OS.  
Also use a page object model for code reusability, reliability and  maintainability.

## 🚀 Run test cases

```python
robot --variable DEVICE:iPhone13
```

To switch device, just change variable DEVICE
```python
robot --variable DEVICE:Pixel
```

## 📖 Code Structure
The code is composed of 3 parts. Config files for setting up the project, files that contain testsuites/testcases and others for pages objects elements. Those files are :

**setup_resource.robot**

The setup_resource.robot file is used to import all files needed to run tests. Those files are:

settings.robot - Contains all settings of the project  
common_keywords.robot - Contains common keywords like `open app` or `close app`  
<name>_page_keywords.robot - Contains all keywords for each page of the application to test. 

This file that centralize all import ease development and maintainability when there is many testsuite/keywords files.

**settings.robot**

The settings.robot file contains the settings of the project. Some libraries are imported and also the devices which are used to run the tests are defined.

**testsuites/\***

In this folder the testcases are written. Each testsuite has it's own robot file.

**keywords/page_objects_keywords\***

In this folder the keywords for each page of the application are defined.

