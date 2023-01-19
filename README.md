# Files for building docker image to read color guard schedule and create ical file

## I use the following command to build this image
This assumes you are located in the directory of the Dockerfile
```
docker build -t color_sched .
```

## I put the following cron entry into crontab to run the parser

```
*/5 * * * * docker run -v /data/htdocs/elm/:/working/htdocs/ --rm color_sched > /tmp/color.txt
```
