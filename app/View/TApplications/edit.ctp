<div class="tApplications form">
<?php echo $this->Form->create('TApplication'); ?>
	<fieldset>
		<legend><?php echo __('Edit T Application'); ?></legend>
	<?php
		echo $this->Form->input('TApp_PK_ID');
		echo $this->Form->input('TApp_Nom');
		echo $this->Form->input('TApp_ApplicationPath');
		echo $this->Form->input('TApp_Description');
		echo $this->Form->input('TApp_ImagePath');
		echo $this->Form->input('TApp_Couleur');
		echo $this->Form->input('TApp_IconePath');
		echo $this->Form->input('TApp_Ordre');
		echo $this->Form->input('User');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('TApplication.TApp_PK_ID')), null, __('Are you sure you want to delete # %s?', $this->Form->value('TApplication.TApp_PK_ID'))); ?></li>
		<li><?php echo $this->Html->link(__('List T Applications'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List T Users'), array('controller' => 't_users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 't_users', 'action' => 'add')); ?> </li>
	</ul>
</div>
