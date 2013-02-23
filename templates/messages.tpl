{extends 'base/forumbase.tpl'}

{block "forum"}
<div id='messages'>
        {foreach from=$messages item=message}
        <div class="message">
            <a href="{$base_url}/{$message.reply_to}#post{$message.id}">
                Mention by
                <span class="author">{$message.author_name}</span>
                <span class="time">{$message.timestamp|timeAgo} ago</span>
                <span class="topic_title">{$message.title}</span>
            </a>
            <blockquote>{$message.message|substr:{$user_logged_in_name|count_characters:true+1}|truncate:100}</blockquote>
        </div>
        {/foreach}
</div>
{/block}