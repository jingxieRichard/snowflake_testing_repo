USE ROLE ACCOUNTADMIN;
USE DATABASE QUICKSTART_COMMON;
USE SCHEMA PUBLIC;

CREATE OR REPLACE API INTEGRATION git_api_integration
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://github.com/jingxieRichard')
  ENABLED = TRUE;


CREATE OR REPLACE GIT REPOSITORY quickstart_common.public.quickstart_repo
  API_INTEGRATION = git_api_integration
  ORIGIN = 'https://github.com/jingxieRichard/snowflake_testing_repo';


SHOW INTEGRATIONS;