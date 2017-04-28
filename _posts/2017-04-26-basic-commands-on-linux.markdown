---
title: "Basic commands on Linux"
layout: post
date: 2017-04-26 00:00
tag: 
- linux
projects: false
headerImage: true
image: /assets/images/blog/2017-04-26-basic-commands-on-linux/command-prompt-icon.png
hidden: false # don't count this post in blog pagination
description: "Basic commands on Linux"
jemoji: ''
category: blog
author: samuelmurillo
externalLink: false
---

Great! You have a nice desktop environment on your Linux install. Doing things with
a GUI seems pretty easy and natural. But what about the more advanced stuff? What if you want to interact with a server 
remotely? If your desktop fails, how would you recover from this?

This and other situations are easily handled using the command line. Simply put, the CLI 
(**C**ommand **L**ine **I**nterface, often called Terminal emulator too) is a program that takes your commands from the 
keyboard and gives them to the operating system to perform. In the old days, it was the only user interface available 
on a Linux/Unix computer. Most of the commands and flags are easy to remember by their acronym, so keep in mind when you
learn a new command to see what it means and it will be easier to memorize.

<div>
    <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/terminal-emulator.png" 
         alt="Terminal emulator">
    <figcaption class="caption">Terminal emulator</figcaption>
</div>
<br>
 
Most of the administrative task, programming tools and system configuration are done using the. 
This is a fast and efficient way to allow the users interact with the OS, without unnecessary clicks or mouse movements.

**But with great power, comes a great responsibility**. The most harmful and dangerous things that you could do to a 
Linux installation is easily done with the terminal. One of the most common commands is also maybe the most dangerous, 
```sudo```. It allows to run any command as a root user, meaning that the system won't be able to stop a possible 
harmful command from being executed. To add a layer of security to the system, not all users all able to call this 
command, and even the users allowed to do so will be prompted to introduce their password before running any command.
 
With that out of the way, let's talk about some other common commands to make tasks quickly using the CLI.


<h3 class="title">ls</h3>

One most used commands is ```ls``` which list "all" the files inside directory, and I put "all" inside quotes because in
the default configuration it won't show hidden files, more on that later.

<div>
    <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/ls.png" alt="ls on action">
    <figcaption class="caption">ls on action</figcaption>
</div>
<br>

As you can see on the previous image, `ls` will print files and folders inside the folder where you are located. 
More parameters can be passed to this command, some of them are very useful for system admins and developers. My most 
common way to run it is `ls -al`, it will print **all** the files and folders (now even including hidden ones), and
do display them in a list view, also showing useful information like the owner of the files and folders, and also 
permissions to read, write and execute. 

<div>
    <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/ls--al.png" alt="ls -al">
    <figcaption class="caption">ls with additional parameters</figcaption>
</div>
<br>

Lastly, notice that if you append a relative or absolute path after `ls` and its parameters, it will print the content
of that directory.


<h3 class="title">cd</h3>

After knowing which files are in a certain folder, you would maybe notice that you aren't in the folder that you are 
supposed to, so here comes handy `cd` (**c**hange **d**irectory). Maybe the most used command on Unix/Linux, with this 
command you will change the directory that you are on, as simple as that.

As an additional note, if you run `cd` with no parameters, it will put you on your home directory. Also, to navigate to
the parent directory where you are working, run `cd ..`.

<div>
    <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/cd.png" alt="cd">
    <figcaption class="caption">cd</figcaption>
</div>
<br>


<h3 class="title">pwd</h3>

Now that you are on the directory you want, maybe you need to take note of the full path for some configuration file,
here comes handy `pwd`, this means "**p**rint **w**orking **d**irectory". 

<div>
    <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/pwd.png" alt="pwd">
    <figcaption class="caption">pwd</figcaption>
</div>
<br>


<h3 class="title">mkdir</h3>

The last command I want to address on the directory navigation is `mkdir` (stands for make directory). It will create a 
directory inside of the folder you are working on. Keep in mind that `mkdir` works with relative and absolute paths. 

Another useful note is to run `mkdir` with the -p flag, running the command with this flag will create nested
directories, but only if they don't exist already.

<div>
    <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/mkdir.png" alt="mkdir">
    <figcaption class="caption">mkdir</figcaption>
</div>
<br>


<h3 class="title">cp</h3>

Now that we know the basics commands for directory navigation, we need to know some file manipulation commands.
One of this is `cp` (means copy). It does exactly what it suggests, copy a file or directory.

<div>
    <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/cp.png" alt="cp">
    <figcaption class="caption">cp</figcaption>
</div>
<br>


<h3 class="title">mv</h3>

Another one used very often is `mv` (stands for move). It will move the file or folder specified as the first parameter 
to the directory passed as the second parameter. 

<div>
    <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/mv.png" alt="mv">
    <figcaption class="caption">mv</figcaption>
</div>
<br>

This command is also often used for renaming files or folders, just like this:

<div>
    <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/mv-renaming.png" 
         alt="mv renaming">
    <figcaption class="caption">Renaming with mv</figcaption>
</div>
<br>


<h3 class="title">rm</h3>

To delete a file, we use the command `rm` (remove). But to delete a whole folder we need to call the command with the
-r flag (means recursively). Also, if you are absolutely sure that you know what you are doing, you can add the -f flag
(means force), with this you will avoid being prompted and don't raise errors if for example a file or directory doesn't
exist. **Be careful with this command!**
 
<div>
 <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/rm.png" alt="rm">
 <figcaption class="caption">rm</figcaption>
</div>
<br>


<h3 class="title">touch</h3>

To create a new empty file, we use `touch`. Nothing weird here.

<div>
 <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/touch.png" alt="touch">
 <figcaption class="caption">touch</figcaption>
</div>
<br>


<h3 class="title">cat</h3>

`cat` is one of the most frequently used commands on Unix-like operating systems (it means concatenate). It has three 
related functions with regard to text files: displaying them, combining copies of them and creating new ones.

The most common use of cat is to read the contents of files:

<div>
 <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/cat.png" alt="reading with cat">
 <figcaption class="caption">cat for reading files</figcaption>
</div>
<br>

You can also quickly concatenate several text files to a new file with the following code:

<div>
 <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/cat-concat.png" 
      alt="Create a file with cat">
 <figcaption class="caption">Create a file with cat</figcaption>
</div>
<br>

This will create a new file called test.txt or replace it if it already exists. This could be dangerous, so often is 
used the append operator, like this: 

<div>
    <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/cat-append.png" 
         alt="Append to a file with cat">
    <figcaption class="caption">Append to a file with cat</figcaption>
</div>
<br>


<h3 class="title">tail</h3>

The last command I want to address on this post is `tail`.  It prints the last 10 lines of a file or files. This is
useful for reading log files. But more useful is using it followed by the flag -f (follow). As its name implies, 
it prints a file and follows any changes of that file. 

<div>
 <img class="image linux" src="/assets/images/blog/2017-04-26-basic-commands-on-linux/tail.png" alt="tail">
 <figcaption class="caption">tail</figcaption>
</div>
<br>

These are just a group of commands that I use daily for common tasks. Of course there's a lot more and also there's more
ways to run the commands presented here. I invite you to read more of this commands and give them a try.
