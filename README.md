# QuickQuotes
AHK script to quickly add quotation marks around the selected text. Created to easily narrow down Google search results to your exact terms.

Finding what you need on Google is getting harder and harder every year. Luckily, Google has inbuilt advanced search features that help bring back the reliability of search results from the past. One of these handy features is adding quotation marks around a specific word or phrase which tells Google to only display results that are an exact match (not including capitalization). So instead of finding web pages that happened to contain all your search keywords scattered unrelated throughout the page, you'll only see results with your exact phrase.

For example: If I google just the phrase: Denon X3700h recall. I get a mess up results from pages that happened to mention those three words on the page but it's obviously not what I'm looking for. The page could literally be a review of an entirely seperate product but the poster's signature has Denon X3700H in it and the word recall is used in the article.

Instead, if I add quotation marks around the term "Denon x3700h recall", I'll find results that have those three terms in order which is more likely to give me results relevant to me. It's especially useful when searching error codes, adding quotation marks around the error will make sure you only see results for your exact error and not errors that are similar or are a little off. 

**Instructions for use:**

1. Install AutoHotKey 1.1
2. Download QuickQuotations.ahk from the latest release 
3. Double click on the file
4. Highlight any text and use the hotkey Ctrl + Middle Mouse Click (Completely customizable to your liking)
5. Profit

**Quality of Life Features**
1. Double clicking on a search term in the Google search bar or address bar will usually highlight the world + the space following it. This script will detect if there's a trailing space and remove it before adding the quotation then add the space after the quotations. This feature was added when I was feeling especially lazy one day and wanted to exert the least possible effort at everything.

Hope someone else finds this extremely simple short script as useful as I do on a daily basis, let me know if you find any issues or outliers scenarios or any general improvements you'd like to see! This is my first time writing code and also publishing something on Github so shoutout to the AHK forums and ChatGPT to help me debug and learn from other scripts.
