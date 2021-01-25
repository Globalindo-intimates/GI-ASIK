<div id="ui-view">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <i class="fa fa-align-justify"></i> Globalindo Intimates - Personil Data (search)
                    </div>
                    <div class="card-body">
                        <!-- </?php if ($this->session->flashdata('msg') != "") { echo $this->session->flashdata('msg'); } ?> -->
                        <div class="form-group">
                            <label for="username" class="col-md-4 control-label"><span class="text-danger">*</span>Search By Name/Nik</label>
                            <div class="row">
                                <div class="col-md-8">
                                    <input type="text" name="nik" value="<?php echo $this->input->post('nik'); ?>" class="form-control" id="username" />
                                    <span class="text-danger"><?php echo form_error('nik');?></span>
                                </div>
                                <div class="pull-right">
                                    <a href="<?php echo base_url();?>index.php/administrator/detail_personal"><"class="btn btn-success">Search</a> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>