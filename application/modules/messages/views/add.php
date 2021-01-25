<!-- <script src="../views/ckeditor.js"></script> -->
<script src="//cdn.ckeditor.com/4.15.1/full/ckeditor.js"></script>


<div id="ui-view">
    <div class="animated fadeIn">
        <div class="orm-group row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <i class="fa fa-align-justify"></i> Add Messages
                    </div>
                    <div class="card-body">
                        <?php if ($this->session->flashdata('msg') != "") { echo $this->session->flashdata('msg'); } ?>
                            <?php echo form_open('index.php/administrator/messages/add', array("class"=>"form-horizontal","enctype"=>"multipart/form-data")); ?>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="name">Message</label>
                                <span class="text-danger">*</span>
                                <textarea name="messages" `required`></textarea>
                                    <script>
                                        CKEDITOR.replace( 'messages', {
                                            enterMode : Number(2)} 
                                        );
                                    </script>
                            </div>
                            <div class="col-md-12">
                            <br>
                            <label for="name">Allocation Message</label>
                                <span class="text-danger">*</span>
                                <select class="form-control" name="allocationMessage" id="allocationMessage" required>
                                    <option
                                        value="General" > -- General --
                                    </option>
                                    <?php
                                       $query = $this->db->query(" SELECT * FROM line ORDER BY name ASC ");
                                         foreach ($query->result() as $row){
                                    ?>
                
                                    <option
                                        value="<?php  echo $row->name ?>" > <?php  echo $row->name ?>
                                    </option>
                                    <?php
                                        }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="pull-right">
                            <button 
                                type="submit"
                                class="btn btn-primary" 
                                id="buttonSearchSPL"
                            >
                                <i class ="fa fa-dot-circle-o">
                                </i>&nbsp;Submit
                                </button>
                        </div>

                        <div class="pull-right">
                            <button type="button" value="Reset"
                                    id="btnResetForm" 
                                    onclick="resetForm()"
                                    class="btn btn-warning active">
                                <i class ="fa fa-eraser"> 
                                </i>
                                    Reset
                            </button>&nbsp;&nbsp;
                        </div>

                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">

</script>