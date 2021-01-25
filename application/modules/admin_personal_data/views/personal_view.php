<div id="ui-view">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <i class="fa fa-align-justify"></i> Globalindo Intimates - Personil Data (search)
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="username" class="col-md-4 control-label"><span class="text-danger">*</span>Search By Name/Nik</label>
                            <div class="row">
                                <div class="col-md-8">
                                    <select type="text" name="nik" value="<?php echo $this->input->post('nik'); ?>" class="form-control select2" id="nik" ></select>
                                    <span class="text-danger"><?php echo form_error('nik');?></span>
                                </div>
                                <div class="btn btn-info">
                                    <a href="<?php echo base_url();?>index.php/administrator/detail_personal/detail_personal" >Search</a> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
load_nik();
function load_nik(){
    $('#orc').empty();
        $.ajax({
          url: "<?php echo site_url('index.php/administrator/personil/personil/getDataNik'); ?>",
          type: 'get',
          dataType: 'json',
          }).done(function(data){
              console.log('data: ', data);
            
            $.each(data, function(i, item) {
              $('#orc').append($('<option>', {
                value: item.nik,
                text: item.nik
              }));
            });
          });
}
</script>