A quick XSLT stylesheet to create a radiator view of Cruise Control's build status.

Use the following to generate a static HTML file:

wget -qO- http://<cruisecontrol>/dashboard/rss | xsltproc -o radiator.html cc-dash.xslt -

Add it to cron to generate it every minute.

We have several TVs around the office, all running Chrome in kiosk mode and displaying this file. We also use Revolver to rotate around a couple of other screens and refresh the page to show updates.

(You can get Revolver here: https://chrome.google.com/extensions/detail/dlknooajieciikpedpldejhhijacnbda ) If you use it in Kiosk mode, just hack the javascript to start automatically.
