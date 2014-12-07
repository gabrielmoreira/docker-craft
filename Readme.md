docker-craft - Craft CMS for Docker
-----------------------------------

[Craft](https://buildwithcraft.com/) Craft is a content management system (CMS) that’s laser-focused on doing one thing really, really well: managing content.
This is a [docker](https://www.docker.io) image that eases setup.

### About Craft

> *From [the official description](https://buildwithcraft.com):*

Craft is content management at its finest. It delivers an extraordinary amount of control to developers, while keeping the editing experience simple and elegant for end users.

![](https://buildwithcraft.com/assets/images/home/hero.png)

Usage
-----

Using this image for the first time will start a download automatically.
Further runs will be immediate, as the image will be cached locally.

This image provides the Craft CMS application running on Apache / MySQL / PHP / Supervisor.

```bash
$ docker run -d -p 80:80 --name craft gabrielmoreira/craft
```

You can now point your webbrowser to this URL:

```
http://localhost/admin
```

This is a rather common setup following docker's conventions:

* `-d` will run a detached session running in the background
* `-p {OutsidePort}:80` will bind the webserver to the given outside port
* `--name` (Optional) the name of container instance
* `gabrielmoreira/craft` the name of this docker image

Known issues
------------

## Page not found on / after installation

It's a know bug: (http://craftcms.stackexchange.com/a/5137)

```bash
$ docker exec craft sed -i 's/entry.heading/entry.title/g' /var/www/craft/templates/index.html
```
