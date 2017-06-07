[33mcommit 02507d88ca5f26f2df4a9cfc05613f86e356d068[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m)[m
Author: dminurulin <dmi.nurulin@yandex.ru>
Date:   Mon May 29 18:49:55 2017 +0300

    start of the project

[1mdiff --git a/composer.json b/composer.json[m
[1mnew file mode 100644[m
[1mindex 0000000..482bec1[m
[1m--- /dev/null[m
[1m+++ b/composer.json[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "require": {[m
[32m+[m[32m        "silex/silex": "~1.1",[m
[32m+[m[32m       "jasongrimes/silex-simpleuser": "^2.0"[m
[32m+[m[32m    },[m
[32m+[m[32m    "autoload":{[m
[32m+[m[32m        "psr-0":{[m
[32m+[m[32m            "Providers" : "",[m
[32m+[m[32m            "Controllers" : "app/"[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/composer.lock b/composer.lock[m
[1mnew file mode 100644[m
[1mindex 0000000..38c0898[m
[1m--- /dev/null[m
[1m+++ b/composer.lock[m
[36m@@ -0,0 +1,636 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "_readme": [[m
[32m+[m[32m        "This file locks the dependencies of your project to a known state",[m
[32m+[m[32m        "Read more about it at https://getcomposer.org/doc/01-basic-usage.md#composer-lock-the-lock-file",[m
[32m+[m[32m        "This file is @generated automatically"[m
[32m+[m[32m    ],[m
[32m+[m[32m    "content-hash": "925bd17266cb7b41d716512597592e26",[m
[32m+[m[32m    "packages": [[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "pimple/pimple",[m
[32m+[m[32m            "version": "v1.1.1",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/silexphp/Pimple.git",[m
[32m+[m[32m                "reference": "2019c145fe393923f3441b23f29bbdfaa5c58c4d"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/silexphp/Pimple/zipball/2019c145fe393923f3441b23f29bbdfaa5c58c4d",[m
[32m+[m[32m                "reference": "2019c145fe393923f3441b23f29bbdfaa5c58c4d",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.1.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-0": {[m
[32m+[m[32m                    "Pimple": "lib/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Pimple is a simple Dependency Injection Container for PHP 5.3",[m
[32m+[m[32m            "homepage": "http://pimple.sensiolabs.org",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "container",[m
[32m+[m[32m                "dependency injection"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2013-11-22T08:30:29+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "psr/log",[m
[32m+[m[32m            "version": "1.0.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/php-fig/log.git",[m
[32m+[m[32m                "reference": "4ebe3a8bf773a19edfe0a84b6585ba3d401b724d"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/php-fig/log/zipball/4ebe3a8bf773a19edfe0a84b6585ba3d401b724d",[m
[32m+[m[32m                "reference": "4ebe3a8bf773a19edfe0a84b6585ba3d401b724d",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.0.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Psr\\Log\\": "Psr/Log/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "PHP-FIG",[m
[32m+[m[32m                    "homepage": "http://www.php-fig.org/"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Common interface for logging libraries",[m
[32m+[m[32m            "homepage": "https://github.com/php-fig/log",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "log",[m
[32m+[m[32m                "psr",[m
[32m+[m[32m                "psr-3"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2016-10-10T12:19:37+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "silex/silex",[m
[32m+[m[32m            "version": "v1.3.6",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/silexphp/Silex.git",[m
[32m+[m[32m                "reference": "ff8aa6bc2e066e14b07e0c63e9bd9dd1458af136"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/silexphp/Silex/zipball/ff8aa6bc2e066e14b07e0c63e9bd9dd1458af136",[m
[32m+[m[32m                "reference": "ff8aa6bc2e066e14b07e0c63e9bd9dd1458af136",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.9",[m
[32m+[m[32m                "pimple/pimple": "~1.0",[m
[32m+[m[32m                "symfony/event-dispatcher": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/http-foundation": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/http-kernel": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/routing": "~2.3|3.0.*"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "doctrine/dbal": "~2.2",[m
[32m+[m[32m                "monolog/monolog": "^1.4.1",[m
[32m+[m[32m                "swiftmailer/swiftmailer": "~5",[m
[32m+[m[32m                "symfony/browser-kit": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/config": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/css-selector": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/debug": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/dom-crawler": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/finder": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/form": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/intl": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/monolog-bridge": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/options-resolver": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/phpunit-bridge": "~2.7",[m
[32m+[m[32m                "symfony/process": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/security": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/serializer": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/translation": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/twig-bridge": "~2.3|3.0.*",[m
[32m+[m[32m                "symfony/validator": "~2.3|3.0.*",[m
[32m+[m[32m                "twig/twig": "~1.28|~2.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.3.x-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Silex\\": "src/Silex"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Igor Wiedler",[m
[32m+[m[32m                    "email": "igor@wiedler.ch"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "The PHP micro-framework based on the Symfony Components",[m
[32m+[m[32m            "homepage": "http://silex.sensiolabs.org",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "microframework"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2017-04-30T16:26:54+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/debug",[m
[32m+[m[32m            "version": "v3.2.8",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/debug.git",[m
[32m+[m[32m                "reference": "fd6eeee656a5a7b384d56f1072243fe1c0e81686"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/debug/zipball/fd6eeee656a5a7b384d56f1072243fe1c0e81686",[m
[32m+[m[32m                "reference": "fd6eeee656a5a7b384d56f1072243fe1c0e81686",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.5.9",[m
[32m+[m[32m                "psr/log": "~1.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "symfony/http-kernel": ">=2.3,<2.3.24|~2.4.0|>=2.5,<2.5.9|>=2.6,<2.6.2"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "symfony/class-loader": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/http-kernel": "~2.8|~3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.2-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\Debug\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony Debug Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2017-04-19T20:17:50+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/event-dispatcher",[m
[32m+[m[32m            "version": "v3.0.9",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/event-dispatcher.git",[m
[32m+[m[32m                "reference": "54da3ff63dec3c9c0e32ec3f95a7d94ef64baa00"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/event-dispatcher/zipball/54da3ff63dec3c9c0e32ec3f95a7d94ef64baa00",[m
[32m+[m[32m                "reference": "54da3ff63dec3c9c0e32ec3f95a7d94ef64baa00",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.5.9"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "psr/log": "~1.0",[m
[32m+[m[32m                "symfony/config": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/dependency-injection": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/expression-language": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/stopwatch": "~2.8|~3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "symfony/dependency-injection": "",[m
[32m+[m[32m                "symfony/http-kernel": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.0-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\EventDispatcher\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony EventDispatcher Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2016-07-19T10:44:15+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/http-foundation",[m
[32m+[m[32m            "version": "v3.0.9",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/http-foundation.git",[m
[32m+[m[32m                "reference": "49ba00f8ede742169cb6b70abe33243f4d673f82"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/http-foundation/zipball/49ba00f8ede742169cb6b70abe33243f4d673f82",[m
[32m+[m[32m                "reference": "49ba00f8ede742169cb6b70abe33243f4d673f82",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.5.9",[m
[32m+[m[32m                "symfony/polyfill-mbstring": "~1.1"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "symfony/expression-language": "~2.8|~3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.0-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\HttpFoundation\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony HttpFoundation Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2016-07-17T13:54:30+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/http-kernel",[m
[32m+[m[32m            "version": "v3.0.9",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/http-kernel.git",[m
[32m+[m[32m                "reference": "d97ba4425e36e79c794e7d14ff36f00f081b37b3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/http-kernel/zipball/d97ba4425e36e79c794e7d14ff36f00f081b37b3",[m
[32m+[m[32m                "reference": "d97ba4425e36e79c794e7d14ff36f00f081b37b3",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.5.9",[m
[32m+[m[32m                "psr/log": "~1.0",[m
[32m+[m[32m                "symfony/debug": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/event-dispatcher": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/http-foundation": "~2.8.8|~3.0.8|~3.1.2|~3.2"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "symfony/config": "<2.8"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "symfony/browser-kit": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/class-loader": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/config": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/console": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/css-selector": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/dependency-injection": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/dom-crawler": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/expression-language": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/finder": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/process": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/routing": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/stopwatch": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/templating": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/translation": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/var-dumper": "~2.8|~3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "symfony/browser-kit": "",[m
[32m+[m[32m                "symfony/class-loader": "",[m
[32m+[m[32m                "symfony/config": "",[m
[32m+[m[32m                "symfony/console": "",[m
[32m+[m[32m                "symfony/dependency-injection": "",[m
[32m+[m[32m                "symfony/finder": "",[m
[32m+[m[32m                "symfony/var-dumper": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.0-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\HttpKernel\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony HttpKernel Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "time": "2016-07-30T09:10:37+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/polyfill-mbstring",[m
[32m+[m[32m            "version": "v1.3.0",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/polyfill-mbstring.git",[m
[32m+[m[32m                "reference": "e79d363049d1c2128f133a2667e4f4190904f7f4"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/e79d363049d1c2128f133a2667e4f4190904f7f4",[m
[32m+[m[32m                "reference": "e79d363049d1c2128f133a2667e4f4190904f7f4",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.3.3"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "ext-mbstring": "For best performance"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.3-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Polyfill\\Mbstring\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "files": [[m
[32m+[m[32m                    "bootstrap.php"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Nicolas Grekas",[m
[32m+[m[32m                    "email": "p@tchwork.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony polyfill for the Mbstring extension",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "compatibility",[m
[32m+[m[32m                "mbstring",[m
[32m+[m[32m                "polyfill",[m
[32m+[m[32m                "portable",[m
[32m+[m[32m                "shim"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2016-11-14T01:06:16+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "symfony/routing",[m
[32m+[m[32m            "version": "v3.0.9",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/symfony/routing.git",[m
[32m+[m[32m                "reference": "9038984bd9c05ab07280121e9e10f61a7231457b"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/symfony/routing/zipball/9038984bd9c05ab07280121e9e10f61a7231457b",[m
[32m+[m[32m                "reference": "9038984bd9c05ab07280121e9e10f61a7231457b",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.5.9"[m
[32m+[m[32m            },[m
[32m+[m[32m            "conflict": {[m
[32m+[m[32m                "symfony/config": "<2.8"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "doctrine/annotations": "~1.0",[m
[32m+[m[32m                "doctrine/common": "~2.2",[m
[32m+[m[32m                "psr/log": "~1.0",[m
[32m+[m[32m                "symfony/config": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/expression-language": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/http-foundation": "~2.8|~3.0",[m
[32m+[m[32m                "symfony/yaml": "~2.8|~3.0"[m
[32m+[m[32m            },[m
[32m+[m[32m            "suggest": {[m
[32m+[m[32m                "doctrine/annotations": "For using the annotation loader",[m
[32m+[m[32m                "symfony/config": "For using the all-in-one router or any loader",[m
[32m+[m[32m                "symfony/dependency-injection": "For loading routes from a service",[m
[32m+[m[32m                "symfony/expression-language": "For using expression matching",[m
[32m+[m[32m                "symfony/http-foundation": "For using a Symfony Request object",[m
[32m+[m[32m                "symfony/yaml": "For using the YAML loader"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "3.0-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-4": {[m
[32m+[m[32m                    "Symfony\\Component\\Routing\\": ""[m
[32m+[m[32m                },[m
[32m+[m[32m                "exclude-from-classmap": [[m
[32m+[m[32m                    "/Tests/"[m
[32m+[m[32m                ][m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "MIT"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Symfony Community",[m
[32m+[m[32m                    "homepage": "https://symfony.com/contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Symfony Routing Component",[m
[32m+[m[32m            "homepage": "https://symfony.com",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "router",[m
[32m+[m[32m                "routing",[m
[32m+[m[32m                "uri",[m
[32m+[m[32m                "url"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2016-06-29T05:40:00+00:00"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "twig/twig",[m
[32m+[m[32m            "version": "v1.33.2",[m
[32m+[m[32m            "source": {[m
[32m+[m[32m                "type": "git",[m
[32m+[m[32m                "url": "https://github.com/twigphp/Twig.git",[m
[32m+[m[32m                "reference": "dd6ca96227917e1e85b41c7c3cc6507b411e0927"[m
[32m+[m[32m            },[m
[32m+[m[32m            "dist": {[m
[32m+[m[32m                "type": "zip",[m
[32m+[m[32m                "url": "https://api.github.com/repos/twigphp/Twig/zipball/dd6ca96227917e1e85b41c7c3cc6507b411e0927",[m
[32m+[m[32m                "reference": "dd6ca96227917e1e85b41c7c3cc6507b411e0927",[m
[32m+[m[32m                "shasum": ""[m
[32m+[m[32m            },[m
[32m+[m[32m            "require": {[m
[32m+[m[32m                "php": ">=5.2.7"[m
[32m+[m[32m            },[m
[32m+[m[32m            "require-dev": {[m
[32m+[m[32m                "psr/container": "^1.0",[m
[32m+[m[32m                "symfony/debug": "~2.7",[m
[32m+[m[32m                "symfony/phpunit-bridge": "~3.3@dev"[m
[32m+[m[32m            },[m
[32m+[m[32m            "type": "library",[m
[32m+[m[32m            "extra": {[m
[32m+[m[32m                "branch-alias": {[m
[32m+[m[32m                    "dev-master": "1.33-dev"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "autoload": {[m
[32m+[m[32m                "psr-0": {[m
[32m+[m[32m                    "Twig_": "lib/"[m
[32m+[m[32m                }[m
[32m+[m[32m            },[m
[32m+[m[32m            "notification-url": "https://packagist.org/downloads/",[m
[32m+[m[32m            "license": [[m
[32m+[m[32m                "BSD-3-Clause"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "authors": [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Fabien Potencier",[m
[32m+[m[32m                    "email": "fabien@symfony.com",[m
[32m+[m[32m                    "homepage": "http://fabien.potencier.org",[m
[32m+[m[32m                    "role": "Lead Developer"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Armin Ronacher",[m
[32m+[m[32m                    "email": "armin.ronacher@active-4.com",[m
[32m+[m[32m                    "role": "Project Founder"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "name": "Twig Team",[m
[32m+[m[32m                    "homepage": "http://twig.sensiolabs.org/contributors",[m
[32m+[m[32m                    "role": "Contributors"[m
[32m+[m[32m                }[m
[32m+[m[32m            ],[m
[32m+[m[32m            "description": "Twig, the flexible, fast, and secure template language for PHP",[m
[32m+[m[32m            "homepage": "http://twig.sensiolabs.org",[m
[32m+[m[32m            "keywords": [[m
[32m+[m[32m                "templating"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "time": "2017-04-20T17:39:48+00:00"[m
[32m+[m[32m        }[m
[32m+[m[32m    ],[m
[32m+[m[32m    "packages-dev": [],[m
[32m+[m[32m    "aliases": [],[m
[32m+[m[32m    "minimum-stability": "stable",[m
[32m+[m[32m    "stability-flags": [],[m
[32m+[m[32m    "prefer-stable": false,[m
[32m+[m[32m    "prefer-lowest": false,[m
[32m+[m[32m    "platform": [],[m
[32m+[m[32m    "platform-dev": [][m
[32m+[m[32m}[m
[1mdiff --git a/index.php b/index.php[m
[1mnew file mode 100644[m
[1mindex 0000000..6928943[m
[1m--- /dev/null[m
[1m+++ b/index.php[m
[36m@@ -0,0 +1,51 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mrequire_once __DIR__ .'/vendor/autoload.php';[m
[32m+[m[32mrequire "controllers/aboutController.php";[m
[32m+[m[32mrequire "controllers/staffController.php";[m
[32m+[m[32mrequire "controllers/seminarsController.php";[m
[32m+[m[32mrequire "providers/ModelsServiceProvider.php";[m
[32m+[m[32mrequire "lib/Dbase.php";[m
[32m+[m
[32m+[m
[32m+[m[32muse Silex\Application;[m
[32m+[m[32muse Silex\Provider;[m
[32m+[m[32muse Silex\ControllerProviderInterface;[m
[32m+[m
[32m+[m[32m//[m
[32m+[m[32m// Application setup[m
[32m+[m[32m//[m
[32m+[m
[32m+[m[32m$app = new Application();[m
[32m+[m[32m$app->register(new Provider\ServiceControllerServiceProvider());[m
[32m+[m[32m//$app->register(new Provider\TwigServiceProvider());[m
[32m+[m[32m$app->register(new Silex\Provider\TwigServiceProvider(), array([m
[32m+[m[32m    'twig.path' => __DIR__ . '/views/',[m
[32m+[m[32m));[m
[32m+[m[32m$app->register(new Providers\ModelsServiceProvider(), array([m
[32m+[m[32m    'models.path' => __DIR__ . '/models/'[m
[32m+[m[32m));[m
[32m+[m[32m//$simpleUserProvider = new SimpleUser\UserServiceProvider();[m
[32m+[m[32m//$app->register($simpleUserProvider);[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m$app->get('/', function () use ($app) {[m
[32m+[m[32m    $menu = $app['models']->load('mainMenu', 'getMainMenuList');[m[41m    [m
[32m+[m
[32m+[m[32m    return $app['twig']->render('page.twig', array([m
[32m+[m[32m        'name' => 'НОВЫЙ ЭЛЕМЕНТ',[m
[32m+[m[32m        'indexpage' => 'true',[m
[32m+[m[32m        'mainmenu' => $menu[m
[32m+[m[32m    ));[m
[32m+[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32m$app->mount('/about', new \Controllers\aboutControllerProvider());[m
[32m+[m[32m$app->mount('/seminars', new \Controllers\seminarsControllerProvider());[m
[32m+[m[32m$app->mount('/staff', new \Controllers\staffControllerProvider());[m
[32m+[m[32m//$app->mount('/lk', $simpleUserProvider);[m
[32m+[m
[32m+[m[32m$app->run();[m
[32m+[m[32m?>[m
\ No newline at end of file[m
