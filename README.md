# EASPortal
Enterprise Application Stack Portal(EASPortal) is a Java 21 web application built on Spring Boot 4.1.1, JSF/PrimeFaces via JoinFaces, and Maven. The project is packaged as a JAR and uses Spring Security, Spring Data JPA, Quartz, and CAS-based authentication.The product introduction link is [https://www.hsuforum.com/default.jsf?tabParam=easPortalTab](https://www.hsuforum.com/default.jsf?tabParam=easPortalTab "Go to The product introduction"). The default account is admin/abcd12341!

## Current project facts

- Java 21 and Spring Boot 4.1.1
- JoinFaces 6.1.1 with PrimeFaces integration
- HSUCommon 5.1.1 as an internal dependency
- Database profiles: `tomcat-db2`, `tomcat-mysql`, `tomcat-oracle`, `tomcat-postgresql`, and `tomcat-sqlserver`
- The default profile is `tomcat-mysql` in `pom.xml`
- The build includes native2ascii resource conversion and AspectJ weaving
- Runtime configuration uses SSL on port 8443 and CAS-based SSO settings

## Repository structure

- `pom.xml` — Maven build, dependency versions, profiles, and plugin configuration
- `src/main/java` — application source code
- `src/main/resources` — runtime configuration, security policies, and web resources
- `src/main/native2ascii` — localization resource sources for native2ascii processing
- `src/main/resources/META-INF/resources` — JSF/PrimeFaces web assets
- `src/test/java` — tests and test support code
- `DB Init Data SQL/` — database seed scripts for the portal data model

## Build and run

### Typical commands

```bash
mvn clean package
mvn -DskipTests package
mvn test
```

### Notes

- The current `pom.xml` configures the Surefire plugin with `skip=true`, so tests are not guaranteed to execute unless that configuration is changed.
- The build also runs native2ascii conversion and AspectJ weaving, so full builds can take longer than a basic Java project.
- Application settings are profile-driven and use Maven resource filtering for values such as the app root, SSO URL, and system URL.

## Authentication and seed data

- The repository includes database seed SQL files under `DB Init Data SQL/` that create an `ADMIN` account.
- The seed scripts in this repository do not document a hard-coded login/password pair, so initial credentials depend on your environment and initialization steps.
- The default runtime properties are configured for CAS-based authentication.

## Important notes

- Update localization source files in [src/main/native2ascii](../src/main/native2ascii) when changing user-facing text; the build will convert them into generated resources under [src/main/resources](../src/main/resources).
- Avoid editing generated files under `target/`.
- Preserve the existing Spring Boot / JSF / PrimeFaces patterns unless a change clearly requires otherwise.

## Planning artifacts

- No root-level planning artifacts such as `spec.md` or `plan.md` are currently present in the repository root.