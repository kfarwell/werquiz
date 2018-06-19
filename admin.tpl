<h1>Administration Panel</h1>

% notices_handler

<p><strong>Current question:</strong>
% cat $sitedir/_werc/quiz/question
</p>

<hr />

<form action="" method="POST">
    <p>
        Question: <input type="text" class="big-input" name="werquiz_admin_question"><br />
        Option 1: <input type="text" class="big-input" name="werquiz_admin_q1"><br />
        Option 2: <input type="text" class="big-input" name="werquiz_admin_q2"><br />
        Option 3: <input type="text" class="big-input" name="werquiz_admin_q3"><br />
        Option 4: <input type="text" class="big-input" name="werquiz_admin_q4"><br />
        Answer:
        <select class="big-input" name="werquiz_admin_answer">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
        </select><br />
        <input type="submit" class="big-input" name="werquiz_admin_submit" value="Change question">
    </p>
</form>
