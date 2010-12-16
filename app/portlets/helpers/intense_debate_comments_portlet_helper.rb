##
# All methods from this helper will be available in the render.html.erb for IntenseDebateCommentsPortlet
module IntenseDebateCommentsPortletHelper

  def insert_intense_debate_code
    %Q|
<script type="text/javascript" language="javascript">
  var idcomments_acct = '#{ENV['INTENSEDEBATE_ACCOUNT']}';
  var idcomments_post_id;
  var idcomments_post_url;
</script>
<span id="IDCommentsPostTitle" style="display:none;"></span>
<script type="text/javascript" src="http://www.intensedebate.com/js/genericCommentWrapperV2.js"></script>|
  end

end
