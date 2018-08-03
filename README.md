# Double Submit Cookies Pattern

[![Maven metadata URI](https://img.shields.io/maven-metadata/v/http/central.maven.org/maven2/com/google/code/gson/gson/maven-metadata.xml.svg?style=flat-square)](https://maven.apache.org/)

Double submit cookies pattern is a method of preventing Cross-site request forgery (CSRF).A double submit cookie is defined as sending a random value in both a cookie and as a request parameter, with the server verifying if the cookie value and request value match.

## Getting Started

Build project with maven
```
mvn clean install
```
or
```
mvn package
```
Deploy the .war file in ./target in a tomcat.
Run application in browser.
```
http://localhost:8080/double-submit-cookies-pattern/
```
Login the system using "admin" as the username and password. Form will submit by validationg the CSRRF token. Open form.html, It does not work as the CSRF validating failed.
