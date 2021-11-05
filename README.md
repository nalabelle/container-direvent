# Direvent Container

Runs direvent and executes things

Put something like the following in `/app/config/direvent.conf` and maybe add
a script in `/app/config/run_command` or just execute something without it.

~~~
watcher {
  path /app/data recursive;
  event (CLOSE_WRITE);
  command "/app/config/run_command"
  timeout 600;
  option (shell, wait, stdout, stderr);
}
~~~
