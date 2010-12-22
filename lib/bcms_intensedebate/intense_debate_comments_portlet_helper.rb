module IntenseDebateCommentsPortletHelper

  # Add the full comments list to a page.
  #
  # *Options*
  # * :url - The URL to the page. Optional.
  # * :intensedebate_account - Probably already configured in the initializer. Optional.
  # * :title - The title of the page. Optional.
  #
  def id_comments(obj, options = {})
    options.symbolize_keys!
    options.assert_valid_keys(:intensedebate_account, :url, :title)
    options[:intensedebate_account] = acct_no unless options[:intensedebate_account]
    raise ArgumentError, "You must specify an IntenseDebate account number", options if options[:intensedebate_account].nil?
    raise "Intense Debate account no. doesn't look valid" unless options[:intensedebate_account] =~ /[\w]{32}/ # => ensure the account no is valid

    options[:url].is_a?(String) # => ensure the url is a string
    options[:title].is_a?(String) # => ensure the url is a string
    %Q|
<script type="text/javascript">
  var idcomments_acct = "#{ options[:intensedebate_account] }";
  var idcomments_post_id = "#{obj.class.name}-#{ obj.id }";
  var idcomments_post_url #{ "='%s'" % options[:url] unless options[:url].nil? };
  var idcomments_post_title #{ "='%s'" % options[:title] unless options[:title].nil? };
</script>
<span id="IDCommentsPostTitle" style="display:none"></span>
<script type="text/javascript" src="http://www.intensedebate.com/js/genericCommentWrapperV2.js"></script>
|
  end

  # Add a comments counter and link to the item.
  #
  # *Options*
  # * :intensedebate_account - Probably already configured in the initializer. Optional.
  # * :url - The URL. Optional, but required if obj is not RESTful.
  #
  def id_comments_link(obj, options = {})
    options.symbolize_keys!
    options.assert_valid_keys(:intensedebate_account, :url)
    options[:intensedebate_account] = acct_no unless options[:intensedebate_account]
    raise ArgumentError, "You must specify an IntenseDebate account number", options if options[:intensedebate_account].nil?
    raise "Intense Debate account no. doesn't look valid" unless options[:intensedebate_account] =~ /[\w]{32}/ # => ensure the account no is valid

    options[:url].is_a?(String) # => ensure the url is a string
    options[:title].is_a?(String) # => ensure the url is a string

    %Q|
<script type="text/javascript">
  var idcomments_acct = "#{ options[:intensedebate_account] }";
  var idcomments_post_id = "#{ obj.id }";
  var idcomments_post_url = "#{ options[:url] ? options[:url] : self.send( :"#{obj.class.to_s.underscore}_path", obj ) }";
</script>
<script type="text/javascript" src="http://www.intensedebate.com/js/genericLinkWrapperV2.js"></script>
|
  end

  protected

  def acct_no
    raise "Please set ENV['INTENSEDEBATE_ACCOUNT'] in config/initializers/intense_debate_settings.rb" unless defined?(ENV['INTENSEDEBATE_ACCOUNT'])
    ENV['INTENSEDEBATE_ACCOUNT']
  end

end
