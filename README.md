# php-library-template

[![CI Status](https://github.com/localheinz/php-library-template/workflows/Continuous%20Integration/badge.svg)](https://github.com/localheinz/php-library-template/actions)
[![codecov](https://codecov.io/gh/localheinz/php-library-template/branch/master/graph/badge.svg)](https://codecov.io/gh/localheinz/php-library-template)
[![Latest Stable Version](https://poser.pugx.org/localheinz/php-library-template/v/stable)](https://packagist.org/packages/localheinz/php-library-template)
[![Total Downloads](https://poser.pugx.org/localheinz/php-library-template/downloads)](https://packagist.org/packages/localheinz/php-library-template)

## Installation

:bulb: This is a great place for showing how to install the package, see below:

Run

```
$ composer require localheinz/php-library-template
```

## Usage

:bulb: This is a great place for showing a few usage examples!

## Changelog

Please have a look at [`CHANGELOG.md`](CHANGELOG.md).

## Contributing

Please have a look at [`CONTRIBUTING.md`](.github/CONTRIBUTING.md).

## Code of Conduct

Please have a look at [`CODE_OF_CONDUCT.md`](.github/CODE_OF_CONDUCT.md).

## License

This package is licensed using the MIT License.

![cut-here](https://user-images.githubusercontent.com/605483/59089349-31d17680-890a-11e9-8976-e9ea199dcdb9.png)

# How to use this template

## Create a project based on this repository using the GitHub user interface

In a nutshell, locate and click the

![use-this-template](https://user-images.githubusercontent.com/605483/59144259-8130a900-89d5-11e9-8916-6762b6a2d225.png)

button above, then clone the newly created repository to make desired changes locally.

:bulb: Take a look at [Bryn Jackson](https://github.blog/author/superbryntendo/)'s post [Generate new repositories with repository templates](https://github.blog/2019-06-06-generate-new-repositories-with-repository-templates/) on the [GitHub Blog](https://github.blog) for further details.

## Create a project based on this repository using `composer`

As an alternative to creating a new project based on this repository using the GitHub UI, since this package has been submitted to [Packagist](https://packagist.org/packages/localheinz/php-library-template), you can run

```
$ composer create-project localheinz/php-library-template ~/Sites/your-user-name/your-repository-name
```

to create a new project based on the `master` branch of this repository in the directory `~/Sites/your-user-name/your-repository-name`.

:bulb: Take a look at [Command-line interface: create-project](https://getcomposer.org/doc/03-cli.md#create-project) to understand the `composer create-project` command and its options.

:bulb: Personally, I like to organize my projects by vendor directory, so for example, my `~/Sites` directory looks a bit similar to this:

```
.
├── composer
│   ├── composer
│   └── packagist
├── fzaninotto
│   └── Faker
├── infection
│   ├── infection
│   └── site
├── localheinz
│   ├── composer-normalize
│   ├── json-normalizer
│   ├── json-printer
│   ├── localheinz.com
└── sebastianbergmann
    ├── diff
    ├── environment
    └── phpunit
```

Of course you can store your projects wherever you want.

When asked whether you want to remove the existing VCS history, confirm, since you want to start a new project with a fresh history.

Next, change into the directory

```
$ cd ~/Sites/your-user-name/your-repository-name
```

initialize a new Git repository

```
$ git init
```

add your remote

```
$ git remote add origin git@github.com:your-user-name/your-repository-name.git
```

:exclamation: Before you add, commit, and push your files to the remote, make sure to adjust the project-specific files.

## Adjust project-specific files

### GitHub

#### Code owners

If you want to define individuals or teams responsible for code in the newly created repository, adjust [`.github/CODEOWNERS`](.github/CODEOWNERS) by replacing `localheinz` with the appropriate username:

```diff
diff --git a/.github/CODEOWNERS b/.github/CODEOWNERS
index 64bf50c..a8dabe5 100644
--- a/.github/CODEOWNERS
+++ b/.github/CODEOWNERS
@@ -1 +1 @@
-* @localheinz
+* @your-username
```

If you do not want to define code owners, remove [`.github/CODEOWNERS`](.github/CODEOWNERS).

:bulb: Take a closer look at [About code owners](https://help.github.com/en/articles/about-code-owners) to understand the format of the configuration file.

#### Contributing Guidelines

Adjust [`github/CONTRIBUTING.md`](github/CONTRIBUTING.md) to your needs if you do not want to use all of the development tools.

:bulb: Take a closer look at [Setting guidelines for repository contributors](https://help.github.com/en/articles/setting-guidelines-for-repository-contributors) to understand the purpose of this file.

#### Funding

If you want to allow users to fund your project, adjust [`github/FUNDING.yml`](github/FUNDING.yml) by replacing `localheinz` with the appropriate username(s), and remove or add additional funding options:

```diff
diff --git a/.github/FUNDING.yml b/.github/FUNDING.yml
index e655dbf..c00e7b3 100644
--- a/.github/FUNDING.yml
+++ b/.github/FUNDING.yml
@@ -1,2 +1,3 @@
-github: localheinz
-patreon: localheinz
+amazon: link-to-your-wish-list
+github: your-username
+patreon: your-username-on-patreon
```

If you do not want to define funding options, remove [`.github/funding.yml`](.github/funding.yml).

:bulb: If you haven't read it yet, take a look at [Devon Zuegel](https://github.blog/author/devonzuegelgithub-com/)'s post [Announcing GitHub Sponsors: a new way to contribute to open source](https://github.blog/2019-05-23-announcing-github-sponsors-a-new-way-to-contribute-to-open-source/) on the [GitHub Blog](https://github.blog).

### Integrations

#### Dependabot

If you want to use [Dependabot](https://dependabot.com), adjust [`dependabot/config.yml`](.dependabot/config.yml) by replacing `localheinz` with the appropriate username:

```diff
diff --git a/.dependabot/config.yml b/.dependabot/config.yml
index 9843ccd..b09cd67 100644
--- a/.dependabot/config.yml
+++ b/.dependabot/config.yml
@@ -4,9 +4,9 @@ version: 1

 update_configs:
   - default_assignees:
-      - "localheinz"
+      - "your-username"
     default_reviewers:
-      - "localheinz"
+      - "your-username"
     directory: "/"
     package_manager: "php:composer"
     update_schedule: "live"
```

If you do not want to use Dependabot, remove [`dependabot/config.yml`](.dependabot/config.yml).

:bulb: Take a closer look at [Dependabot config files](https://dependabot.com/docs/config-file/) to understand what the configuration settings mean.

#### Probot: Settings

If you have added [Probot: Settings](https://github.com/apps/settings) and want to enable it for the project, you have to (!) adjust [`github/settings.yml`](.github/settings.yml):

```diff
diff --git a/.github/settings.yml b/.github/settings.yml
index a192308..01f451c 100644
--- a/.github/settings.yml
+++ b/.github/settings.yml
@@ -35,11 +35,11 @@ repository:
   allow_rebase_merge: false
   allow_squash_merge: false
   default_branch: master
-  description: ":ledger: Provides a GitHub repository template for a PHP library."
+  description: "Your repository description here"
   has_downloads: true
   has_issues: true
-  has_pages: false
-  has_projects: false
-  has_wiki: false
-  name: php-library-template
+  has_pages: true
+  has_projects: true
+  has_wiki: true
+  name: your-repository-name-here
   private: false
```

 If you do not want to configure Probot: Settings, remove [`.github/settings.yml`](.github/settings.yml).

:exclamation: Take a closer look at [Probot: Settings](https://github.com/apps/settings) to understand the purpose of this file, and especially take note of the dangers involved in using this integration:

> **WARNING**: Note that this integration _inherently escalates anyone with push permissions to the **admin** role_, since they can push config settings to the `master` branch, which will be synced. In the future, we may add restrictions to allow changes to the config file to be merged only by specific people/teams, or those with admin access _(via a combination of protected branches, required statuses, and branch restrictions)_. Until then, use caution when merging PRs and adding collaborators.

#### Probot: Stale

If you have added [Probot: Settings](https://github.com/apps/settings) and want to enable it for the project, use [`github/stale.yml`](.github/stale.yml) as it is or adjust it to your needs:

```diff
diff --git a/.github/stale.yml b/.github/stale.yml
index 504ab97..4a21638 100644
--- a/.github/stale.yml
+++ b/.github/stale.yml
@@ -1,9 +1,9 @@
 # https://github.com/probot/stale

 daysUntilClose: 7
-daysUntilStale: 60
+daysUntilStale: 90
 markComment: >
   This issue has been automatically marked as stale because it has not had
   recent activity. It will be closed if no further activity occurs. Thank you
-  for your contributions.
+  for your contributions. Please let us know if you want tp continue with this!
 staleLabel: stale
 ```

 If you do not want to configure Probot: Stale, remove [`.github/stale.yml`](.github/stale.yml).

:bulb: Take a closer look at [Probot: Settings](https://github.com/apps/settings) to understand the purpose of this file.

#### Travis CI

Take a look at [Creating a personal access token for the command line](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line) to find out how to create a GitHub token. The token is useful for circumventing the public GitHub API rate limit. [https://getcomposer.org/doc/06-config.md#github-oauth]

Create a
:bulb: Take a closer look at [Customizing the build](https://docs.travis-ci.com/user/customizing-the-build/) and [Job Lifecycle](https://docs.travis-ci.com/user/job-lifecycle/) to understand the format of .

https://docs.travis-ci.com/user/customizing-the-build/

### friendsofphp/php-cs-fixer`

Adjust [`.php_cs`](.php_cs):

```diff
diff --git a/.php_cs b/.php_cs
index bfa0447..52e6691 100644
--- a/.php_cs
+++ b/.php_cs
@@ -14,12 +14,12 @@ declare(strict_types=1);
 use Localheinz\PhpCsFixer\Config;

 $header = <<<'EOF'
-Copyright (c) 2019 Andreas Möller
+Copyright (c) 2019 Your name here

 For the full copyright and license information, please view
 the LICENSE file that was distributed with this source code.

-@see https://github.com/localheinz/php-library-template
+@see https://github.com/your-username/your-repository-name
 EOF;

 $config = Config\Factory::fromRuleSet(new Config\RuleSet\Php71($header));
 ```

