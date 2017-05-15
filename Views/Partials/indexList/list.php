<?php if(count($viewParams['rows']) > 0 ) : ?>

	<table border = "1">
		<tr>
			<th>Question , version</th>
			<th>Respondent</th>
			<th>Answer</th>
			<th>Time Stamp</th>
		</tr>
		
		<?php foreach ($viewParams['rows'] as $row ) : ?>
			<tr>
			<td>
					<?php echo($row['title']) ?>,
					<?php echo($row['question_version']) ?>,
				</td>
				<td>
					<?php echo($row['name']) ?>
				</td>
				<td>
					<?php echo($row['answer']) ?>
				</td>
				<td>
					<?php echo($row['time_stamp']) ?>
				</td>
			</tr>
		<?php endforeach ?>
	</table>

<?php else : ?>

	No results found for you selection.

<?php endif ?>
