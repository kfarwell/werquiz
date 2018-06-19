<script>
  setTimeout(function(){window.location.reload(true);}, 2000);
</script>

% werquiz_dir=$werquiz_dir

<h1>
% cat $werquiz_dir/question
</h1>

%{
if(test -f $werquiz_dir/winner)
  notify_notes=($notify_notes `{cat $werquiz_dir/winner}^' wins this round with answer '`{cat $werquiz_dir/answer}^'!')
notices_handler
%}

<hr />
<h2>Options</h2>

<ol>
  <li>
%   cat $werquiz_dir/q1
  </li>
  <li>
%   cat $werquiz_dir/q2
  </li>
  <li>
%   cat $werquiz_dir/q3
  </li>
  <li>
%   cat $werquiz_dir/q4
  </li>
</ol>

<hr />
<h2>Scoreboard</h2>

<p>
% for(user in `{find $werquiz_dir/users -type f | xargs ls -t}) {
%   echo $user: `{cat $user} | awk -F/ '{print $NF}'
    <br />
% }
</p>
