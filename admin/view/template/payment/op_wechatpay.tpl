<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-op_wechatpay" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
	<?php if ($error_warning) { ?>
	<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
	  <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
	  <div class="panel-heading">
	    <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
	  </div>
	  <div class="panel-body">
	 	 <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-op_wechatpay" class="form-horizontal">
	 	 	<div class="form-group required">
	            <label class="col-sm-2 control-label" for="input-account"><?php echo $entry_account; ?></label>
	            <div class="col-sm-10">
	              <input type="text" name="op_wechatpay_account" value="<?php echo $op_wechatpay_account; ?>" placeholder="<?php echo $entry_account; ?>" id="input-account" class="form-control" />
	              <?php if ($error_account) { ?>
	              <div class="text-danger"><?php echo $error_account; ?></div>
	              <?php } ?>
	            </div>
	        </div>
	        <div class="form-group required">
	            <label class="col-sm-2 control-label" for="input-terminal"><?php echo $entry_terminal; ?></label>
	            <div class="col-sm-10">
	              <input type="text" name="op_wechatpay_terminal" value="<?php echo $op_wechatpay_terminal; ?>" placeholder="<?php echo $entry_terminal; ?>" id="input-terminal" class="form-control" />
	              <?php if ($error_terminal) { ?>
	              <div class="text-danger"><?php echo $error_terminal; ?></div>
	              <?php } ?>
	            </div>
	        </div>
	        <div class="form-group required">
	            <label class="col-sm-2 control-label" for="input-securecode"><?php echo $entry_securecode; ?></label>
	            <div class="col-sm-10">
	              <input type="text" name="op_wechatpay_securecode" value="<?php echo $op_wechatpay_securecode; ?>" placeholder="<?php echo $entry_securecode; ?>" id="input-securecode" class="form-control" />
	              <?php if ($error_securecode) { ?>
	              <div class="text-danger"><?php echo $error_securecode; ?></div>
	              <?php } ?>
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="col-sm-2 control-label" for="input-transaction"><?php echo $entry_transaction; ?></label>
	            <div class="col-sm-10">
	              <select name="op_wechatpay_transaction" id="input-transaction" class="form-control">
	                <?php if ($op_wechatpay_transaction == $text_pay) { ?>
	                <option value="<?php echo $text_pay; ?>" selected="selected"><?php echo $text_pay; ?></option>
	                <?php } else { ?>
	                <option value="<?php echo $text_pay; ?>"><?php echo $text_pay; ?></option>
	                <?php } ?>
	                
	                <?php if ($op_wechatpay_transaction == $text_test) { ?>
	                <option value="<?php echo $text_test; ?>" selected="selected"><?php echo $text_test; ?></option>
	                <?php } else { ?>
	                <option value="<?php echo $text_test; ?>"><?php echo $text_test; ?></option>
	                <?php } ?>
	              </select>
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="col-sm-2 control-label" for="input-default-order-status"><?php echo $entry_default_order_status; ?></label>
	            <div class="col-sm-10">
	              <select name="op_wechatpay_default_order_status_id" id="input-default-order-status" class="form-control">
	                <?php foreach ($order_statuses as $order_status) { ?>
	                <?php if ($order_status['order_status_id'] == $op_wechatpay_default_order_status_id) { ?>
	                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
	                <?php } else { ?>
	                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
	                <?php } ?>
	                <?php } ?>
	              </select>
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="col-sm-2 control-label" for="input-success-order-status"><?php echo $entry_success_order_status; ?></label>
	            <div class="col-sm-10">
	              <select name="op_wechatpay_success_order_status_id" id="input-success-order-status" class="form-control">
	                <?php foreach ($order_statuses as $order_status) { ?>
	                <?php if ($order_status['order_status_id'] == $op_wechatpay_success_order_status_id) { ?>
	                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
	                <?php } else { ?>
	                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
	                <?php } ?>
	                <?php } ?>
	              </select>
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="col-sm-2 control-label" for="input-failed-order-status"><?php echo $entry_failed_order_status; ?></label>
	            <div class="col-sm-10">
	              <select name="op_wechatpay_failed_order_status_id" id="input-failed-order-status" class="form-control">
	                <?php foreach ($order_statuses as $order_status) { ?>
	                <?php if ($order_status['order_status_id'] == $op_wechatpay_failed_order_status_id) { ?>
	                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
	                <?php } else { ?>
	                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
	                <?php } ?>
	                <?php } ?>
	              </select>
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="col-sm-2 control-label" for="input-pending-order-status"><?php echo $entry_pending_order_status; ?></label>
	            <div class="col-sm-10">
	              <select name="op_wechatpay_pending_order_status_id" id="input-pending-order-status" class="form-control">
	                <?php foreach ($order_statuses as $order_status) { ?>
	                <?php if ($order_status['order_status_id'] == $op_wechatpay_pending_order_status_id) { ?>
	                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
	                <?php } else { ?>
	                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
	                <?php } ?>
	                <?php } ?>
	              </select>
	            </div>
	        </div>
			<div class="form-group">
	            <label class="col-sm-2 control-label" for="input-geo-zone"><?php echo $entry_geo_zone; ?></label>
	            <div class="col-sm-10">
	              <select name="op_wechatpay_geo_zone_id" id="input-geo-zone" class="form-control">
	                <option value="0"><?php echo $text_all_zones; ?></option>
	                <?php foreach ($geo_zones as $geo_zone) { ?>
	                <?php if ($geo_zone['geo_zone_id'] == $op_wechatpay_geo_zone_id) { ?>
	                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
	                <?php } else { ?>
	                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
	                <?php } ?>
	                <?php } ?>
	              </select>
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
	            <div class="col-sm-10">
	              <select name="op_wechatpay_status" id="input-status" class="form-control">
	                <?php if ($op_wechatpay_status) { ?>
	                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
	                <option value="0"><?php echo $text_disabled; ?></option>
	                <?php } else { ?>
	                <option value="1"><?php echo $text_enabled; ?></option>
	                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
	                <?php } ?>
	              </select>
	            </div>
	        </div>
		 <div class="form-group">
			 <label class="col-sm-2 control-label" for="input-logs"><?php echo $entry_logs; ?></label>
			 <div class="col-sm-10">
				 <select name="op_wechatpay_logs" id="input-logs" class="form-control">
					 <?php if ($op_wechatpay_logs == $text_logs_true) { ?>
					 <option value="<?php echo $text_logs_true; ?>" selected="selected"><?php echo $text_logs_true; ?></option>
					 <?php } else { ?>
					 <option value="<?php echo $text_logs_true; ?>"><?php echo $text_logs_true; ?></option>
					 <?php } ?>

					 <?php if ($op_wechatpay_logs == $text_logs_false) { ?>
					 <option value="<?php echo $text_logs_false; ?>" selected="selected"><?php echo $text_logs_false; ?></option>
					 <?php } else { ?>
					 <option value="<?php echo $text_logs_false; ?>"><?php echo $text_logs_false; ?></option>
					 <?php } ?>
				 </select>
			 </div>
			 </div>
	        <div class="form-group">
	            <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
	            <div class="col-sm-10">
	              <input type="text" name="op_wechatpay_sort_order" value="<?php echo $op_wechatpay_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
	            </div>
	        </div>
	 	 </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?> 