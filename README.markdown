# IntenseDebate plugin for BrowserCMS

Provides IntenseDebate commenting features for your BrowserCMS site. It gives you:

* A portlet to use on arbitrary pages,
* View helpers you can use to emit IntenseDebate API calls in a more precise fashion in your views or content blocks.

## Installation

1. Create an intensedebate.com site key for your specific URL,
2. Follow the generic module instructions here: http://guides.browsercms.org/installing_modules.html
3. Edit BROWSER_CMS_ROOT/config/initializer/intense_debate_settings.rb to include your site key. Restart your rails app.
4. There are no migrations to run.

## Notes

* Each IntenseDebateCommentsPortlet generates a unique idcomments_post_id value to be used by the IntenseDebate API. You may want to reuse or generate a new portlet for every page depending on your commenting goals.
* Check out the id_comments and id_comments_link view helpers - they are available everywhere and give you the ability to put in comments and comment object links everywhere. 

## Uninstallation

Nothing special.

## Author

Dan Collis-Puro
djcp@cyber.law.harvard.edu, dan@collispuro.com
Created for http://www.lawlab.org/

## License

LGPL

