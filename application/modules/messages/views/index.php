<div id="ui-view">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <i class="fa fa-align-justify"></i> List Messages
                    </div>
                    <div class="card-body">
                        <?php if ($this->session->flashdata('msg') != "") { echo $this->session->flashdata('msg'); } ?>
                        <div class="pull-right">
                            <a href="<?php echo site_url('index.php/administrator/messages/add'); ?>" class="btn btn-success">Add</a> 
                        </div>
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>Actions</th>
                                <th>Messages</th>
                                <th>Allocation Messages</th>
                                <th>Created By</th>
                                <th>Created Date</th>
                            </tr>
                            <?php
                               foreach($messages as $m){
                            ?>
                            <tr>
                                <td>
                                    <a href="<?php  echo site_url('index.php/administrator/messages/remove/'.$m->id_message); ?>"
                                        class="btn btn-danger btn-xs" onclick="return confirm('Are you sure to remove this message?');">
                                        <i class ="fa fa-trash">
                                        </i>
                                    </a>
                                </td>
                                <td><?php echo $m->message; ?></td>
                                <td><?php echo $m->allocation_message; ?></td>   
                                <td><?php echo $m->created_by; ?></td>   
                                <td><?php echo $m->created_date; ?></td>   
                             
                            </tr>
                            <?php } ?>
                        </table>
                        <div class="pull-right">
                            <?php echo $this->pagination->create_links(); ?>    
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
