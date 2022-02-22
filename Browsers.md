# Browsers

A crucial tool is the browser. Web developers rely on the browser to observe how their code runs on the web, it's also used to view visual elements of a web page that are written in the editor, like HTML.  
Many browsers come with *developer tools* (DevTools) that contain a set of helpful features and information to assist developers to collect and capture important insights about their application. For example: If a web page has errors, it's sometimes helpful to know when they occurred. DevTools in a browser can be configured to capture this information.   

#### Check out those Tiny URLs Safely:  
To preview without accessing a Tiny URL, add preview to the front.  
```url
http://preview.<TinyURLs>/
```

### Browser Independent OnLoad Calls
```javascript
if (window.addEventListener) window.addEventListener("load", <YourOnloadFunction>, false);
else if (window.attachEvent) window.attachEvent("onload", <YourOnloadFunction>);
else window.onload = <YourOnloadFunction>;
```

### Popular Browsers and DevTools  
- [Edge](https://docs.microsoft.com/microsoft-edge/devtools-guide-chromium?WT.mc_id=academic-13441-cxa)   
- [Chrome](https://developers.google.com/web/tools/chrome-devtools/)  
- [Firefox](https://developer.mozilla.org/docs/Tools)  

#### Short Link?
Use 'Preview' with a short link and reduce your exposure:  
```html
http://preview.<tinyURL>/ (remove the extra space)
```

### Common Keyboard Shortcuts
Clicking around in your browser is often not the fastest option, getting familiar with common shortcuts can really pay off in the long run.
- `Middle Button Click` in a link opens it in a new tab
- `Ctrl+T` Opens a new tab
- `Ctrl+Shift+T` Reopens a recently closed tab
- `Ctrl+L` selects the contents of the search bar
- `Ctrl+F` to search within a webpage. If you do this often, you may benefit from an extension that supports regular expressions in searches.

### Console
The Console requires developer functions in your browser. If not available, enable Developer. 
```javascript
console.log("Greeting from the JavaScript!!!!");
```

### Functionality Customization
In the same way that you can modify the style, you can also modify the behaviour of a website by writing custom javascript and them sourcing it using a web browser extension such as [Tampermonkey](https://tampermonkey.net/)

For example the following script enables vim-like navigation using the J and K keys.

```js
// ==UserScript==
// @name         VIM HT
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Vim JK for our website
// @author       You
// @match        https://hacker-tools.github.io/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    window.onkeyup = function(e) {
        var key = e.keyCode ? e.keyCode : e.which;

        if (key == 74) { // J is key 74
            window.scrollBy(0,500);;
        }else if (key == 75) { // K is key 75
            window.scrollBy(0,-500);;
        }
    }
})();
```

There are also script repositories such as [OpenUserJS](https://openuserjs.org/) and [Greasy Fork](https://greasyfork.org/en). However, be warned, installing user scripts from others can be very dangerous since they can pretty much do anything such as steal your credit card numbers. Never install a script unless you read the whole thing yourself, understand what it does, and are absolutely sure that you know it isn't doing anything suspicious. Never install a script that contains minified or obfuscated code that you can't read!

### Privacy extensions
Nowadays surfing the web can get quite annoying due to ads and invasive due to trackers. Moreover a good adblocker not only blocks most ad content but it will also block sketchy and malicious websites since they will be included in the common blacklists. They will also reduce page load times sometimes by reducing the amount of requests performed. A couple of recommendations are:

- **uBlock origin** ([Chrome](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm), [Firefox](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)): block ads and trackers based on predefined rules. You should also consider taking a look at the enabled blacklists in settings since you can enable more based on your region or browsing habits. You can even install filters from [around the web](https://github.com/gorhill/uBlock/wiki/Filter-lists-from-around-the-web)

- **[Privacy Badger](https://privacybadger.org/)**: detects and blocks trackers automatically. For example when you go from website to website ad companies track which sites you visit and build a profile of you

- **[HTTPS everywhere](https://www.eff.org/https-everywhere)** is a wonderful extension that redirects to HTTPS version of a website automatically, if available.

You can find about more addons of this kind [here](https://www.privacytools.io/#browser-addons)

### Search operators
Web search engines like Google or DuckDuckGo provide search operators to enable more elaborate web searches:

- `"bar foo"` enforces an exact match of bar foo
- `foo site:bar.com` searches for foo within bar.com
- `foo -bar ` excludes the terms containing bar from the search
- `foobar filetype:pdf` Searches for files of that extension
- `(foo|bar)` searches for matches that have foo OR bar

More through lists are available for popular engines like
- [Google](https://ahrefs.com/blog/google-advanced-search-operators/)
- [DuckDuckGo](https://duck.co/help/results/syntax)

### Searchbar
The searchbar is a powerful tool too. Most browsers can infer search engines from websites and will store them. By editing the keyword argument

- In Google Chrome they are in [chrome://settings/searchEngines](chrome://settings/searchEngines)
- In Firefox they are in [about:preferences#search](about:preferences#search)

For example you can make so that `y SOME SEARCH TERMS` to directly search in youtube.

Moreover, if you own a domain you can setup subdomain forwards using your registrar. For instance I have mapped `https://ht.josejg.com` to this course website. That way I can just type `ht.` and the searchbar will autocomplete. Another good feature of this setup is that unlike bookmarks they will work in every browser.

#### Style customization
Web browsers are just another piece of software running in _your machine_ and thus you usually have the last say about what they should display or how they should behave. An example of this are custom styles. Browsers determine how to render the style of a  webpage using Cascading Style Sheets often abbreviated as CSS.

You can access the source code of a website by inspecting it and changing its contents and styles temporarily (this is also a reason why you should never trust webpage screenshots).

If you want to permanently tell your browser to override the style settings for a webpage you will need to use an extension. Our recommendation is **[Stylus](https://github.com/openstyles/stylus)** ([Firefox](https://addons.mozilla.org/en-US/firefox/addon/styl-us/), [Chrome](https://chrome.google.com/webstore/detail/stylus/clngdbkpkpeebahjckkjfobafhncgmne?hl=en)).

For example, we can write the following style for the class website

```css

body {
    background-color: #2d2d2d;
    color: #eee;
    font-family: Fira Code;
    font-size: 16pt;
}

a:link {
    text-decoration: none;
    color: #0a0;
}
```

Moreover, Stylus can find styles written by other users and published in [userstyles.org](https://userstyles.org/). Most common websites have one or several dark theme stylesheets for instance. FYI, you should not use Stylish since it was shown to leak user data, more [here](https://arstechnica.com/information-technology/2018/07/stylish-extension-with-2m-downloads-banished-for-tracking-every-site-visit/)

### Web APIs
It has become more and more common for webservices to offer an application interface aka web API so you can interact with the services making web requests.
A more in depth introduction to the topic can be found [here](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Client-side_web_APIs/Introduction). There are [many public APIs](https://github.com/toddmotto/public-apis). Web APIs can be useful for very many reasons:

- **Retrieval**. Web APIs can quite easily provide you information such as maps, weather or what your public ip address. For instance `curl ipinfo.io` will return a JSON object with some details about your public ip, region, location, &c. With proper parsing these tools can be integrated even with command line tools. The following bash functions talks to Googles autocompletion API and returns the first ten matches.

```bash
function c() {
    url='https://www.google.com/complete/search?client=hp&hl=en&xhr=t'
    # NB: user-agent must be specified to get back UTF-8 data!
    curl -H 'user-agent: Mozilla/5.0' -sSG --data-urlencode "q=$*" "$url" |
        jq -r ".[1][][0]" |
        sed 's,</\?b>,,g'
}
```

- **Interaction**. Web API endpoints can also be used to trigger actions. These usually require some sort of authentication token that you can obtain through the service. For example performing the following
`curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World!"}' "https://hooks.slack.com/services/$SLACK_TOKEN"` will send a `Hello, World!` message in a channel.

- **Piping**. Since some services with web APIs are rather popular, common web API "gluing" has already been implemented and is provided with server included. This is the case for services like [If This Then That](https://ifttt.com/) and [Zapier](https://zapier.com/)

#### Web Automation

Sometimes web APIs are not enough. If only reading is needed you can use a html parser like `pup` or use a library, for example python has BeautifulSoup. However if interactivity or javascript execution is required those solutions fall short. WebDriver

For example, the following script will save the specified url using the wayback machine simulating the interaction of typing the website.

```python
from selenium.webdriver import Firefox
from selenium.webdriver.common.keys import Keys

def snapshot_wayback(driver, url):

    driver.get("https://web.archive.org/")
    elem = driver.find_element_by_class_name('web-save-url-input')
    elem.clear()
    elem.send_keys(url)
    elem.send_keys(Keys.RETURN)
    driver.close()

driver = Firefox()
url = 'https://hacker-tools.github.io'
snapshot_wayback(driver, url)
```
# Chrome (Google)  

### Chrome Extensions
* 🔖 [Accessibility Insights for Web](https://chrome.google.com/webstore/detail/accessibility-insights-fo/pbjjkligggfmakdaogkfomddhfmpjeni)
* 🔖 [Colorblindly](https://chrome.google.com/webstore/detail/colorblindly/floniaahmccleoclneebhhmnjgdfijgg)
* 🔖 [ColorPick Eyedropper](https://chrome.google.com/webstore/detail/colorpick-eyedropper/ohcpnigalekghcmgcdcenkpelffpdolg)
* 🔖 [CSSViewer](https://chrome.google.com/webstore/detail/cssviewer/ggfgijbpiheegefliciemofobhmofgce)
* 🔖 [Dimensions](https://chrome.google.com/webstore/detail/dimensions/baocaagndhipibgklemoalmkljaimfdj)
* 🔖 [JSONView](https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh)
* 🔖 [Lighthouse](https://chrome.google.com/webstore/detail/lighthouse/blipmdconlkpinefehnmjammfjpmpbjk)
* 🔖 [Lorem Ipsum Generator](https://chrome.google.com/webstore/detail/lorem-ipsum-generator/pglahbfamjiifnafcicdibiiabpakkkb)
* 🔖 [PerfectPixel](https://chrome.google.com/webstore/detail/perfectpixel-by-welldonec/dkaagdgjmgdmbnecmcefdhjekcoceebi)
* 🔖 [VisBug](https://chrome.google.com/webstore/detail/visbug/cdockenadnadldjbbgcallicgledbeoc)
* 🔖 [Wappalyzer](https://chrome.google.com/webstore/detail/wappalyzer/gppongmhjkpfnbhagpmjfkannfbllamg)
* 🔖 [Web Developer](https://chrome.google.com/webstore/detail/web-developer/bfbameneiokkgbdmiekhjnmfkcnldhhm)  

# CrEdge (Microsoft)
Microsoft Edge is a modern web browser designed for faster, safer browsing on Windows 10 based on the Google Chromium browser engine. Get more done on the web with built-in tools for notetaking, reading and more. 

#### Save tabs for later
Whether you're planning a vacation or researching a school project, you'll likely have several sites open that you'll want to reopen later.  
Next to your tabs in Microsoft Edge, select Set these tabs aside. When you're ready for them, select `Tabs you've set aside` > `Restore tabs`. 
 
#### See snapshots of open tabs
When you have a tons of open tabs, see small snapshots of these pages by using your mouse to hover over open tabs. Or select Show tab previews  to see previews of all your open tabs. 
 
#### Mute a website
Mute web pages that automatically play audio with a single click. Select the speaker  icon on the tab that is playing audio to turn it off. Select the speaker  icon again to turn the sound back on. 
 
#### Get to your favorite sites right away
In Microsoft Edge, pin tabs to keep your favorite sites in the same place every time you open the browser. Press and hold (or right-click) a tab, then select Pin. 
 
#### Fill forms with a click
Let Microsoft Edge help fill out your forms on the web. To add or edit your info, select Settings and more  > Settings > View advanced settings > Manage form entries.
#### Make Your Shortcut Open an URL in InPrivate Browsing  
You might want to open a specific web site always in InPrivate Browsing mode. In this case, you can add its address (URL) to the shortcut target. For instance, you can create a shortcut with the following target:  
```dos
"%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" -inprivate https://portal.apps.mil/
```  
Then every time you click on the shortcut you will have Flank Speed  opened in an InPrivate window.

#### Basic Link Formats:  
(64-bit Windows - Opens Microsoft Edge Stable InPrivate browsing window to a specific site)
```dos
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -inprivate [URL]
msedge.exe -inprivate [URL]
```
(64-bit Windows - Opens Microsoft Edge Stable InPrivate browsing window to a specific site always in new window)
```dos
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -inprivate -new-window [URL]
msedge.exe -inprivate -new-window [URL]
```
For those challenging Websites that require Internet Explorer:
```dos
"C:\Program Files\Internet Explorer\iexplore.exe" [-private] [URL]
iexplore.exe [-private] [URL]
```

**InPrivate** browsing is a private browsing mode in which no browsing history, download history, cookies and site data, and form fill data are remembered. Microsoft Edge saves downloaded files as well as any new favorites created while browsing InPrivate. By default, while browsing InPrivate, Microsoft does not collect any info about websites you visit for product improvement purposes. Your school, workplace, or internet service provider may still be able to see your browsing activity. Browsing data for the specific InPrivate session is cleared after all InPrivate windows are closed.

# FireFox (Mozilla)  

### Enable NTLM & Kerberos
NTLM and Kerberos are not activated by default in Firefox. To make it work, you need to follow these steps:
1. Navigate to the URL `about:config`.  
2. Click past the warning of harmful consequences.  
3. Type `negotiate-auth` into the filter at the top of the page, in order to remove most of the irrelevant settings from the list.  
4. Double-click on `network.negotiate-auth.trusted-uris`. A dialogue box for editing the value should appear.  
5. Enter the required hostname(s) and/or URL prefix(es) then click OK. For the above example, it is `http://localhost:3000`  

[More detailed info here](http://www.microhowto.info/howto/configure_firefox_to_authenticate_using_spnego_and_kerberos.html) .

