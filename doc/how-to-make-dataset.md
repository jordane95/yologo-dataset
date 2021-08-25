In order to make your own dataset from scratch, the following two steps are required:

1. data colletion
2. data annotation

## data collection

To get the desired data (image), we can use the crawler to scrapy images from Internet by search engine. We use [AutoCrawler](https://github.com/YoongiKim/AutoCrawler) as our image crawler.
For more detail, refer to the /crawler/ folder.

## data annotation

We use [labelImg](https://github.com/tzutalin/labelImg) to annotate data in form of yolov5. For more detail, please go to the /labelImg/ folder.


Finally, we use the [logo.yaml](../yolov5/data/logo.yaml) file to describe our dataset and use the bash script [logo.sh](../logo.sh) to build the dataset.
