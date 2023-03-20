<div class="row">
   <div class="col-sm-12 col-md-12">
      <div class="panel panel-bd lobidrag">
			<div class="panel-heading">
				<div class="panel-title">
					<h4>
						<?php echo display('cash_balance')?>
					</h4>
				</div>
			</div>
			<div id="printableArea">
				<div class="panel-body print-font-size">
					<table class="print-table print-font-size" width="100%">
						<tr>
							<td align="left" class="print-table-tr" width="33%">
								<img src="<?php echo base_url().$setting->logo;?>" class="img-bottom-m print-logo"
										alt="logo">
							</td>
							<td align="center" style="border-bottom: 2px #333 solid;" width="33%">
								<strong class=""><?= display('cash_balance') ?></strong></td>
							
							<td align="right" class="print-table-tr" width="33%">
								<date> <?php echo display('date')?>: <?php echo date('d-M-Y'); ?> </date><br>
							</td>
						</tr>
					</table>
					<div class="table-responsive">
						<table width="100%" class="table table-bordered table-stripped print-font-size" cellpadding="6"
							cellspacing="1">
							<thead>
								<tr>
									<td height="25" width="3%"><strong><?php echo display('sl');?></strong></td>
									<td width="10%"><strong><?php echo display('account');?></strong></td>
									<td width="10%"><strong><?php echo display('account_name');?></strong></td>
									<td width="10%" align="right">
										<strong><?php echo display('debit');?></strong>
									</td>
									<td width="10%" align="right">
										<strong><?php echo display('credit');?></strong>
									</td>
									<td width="10%" align="right">
										<strong><?php echo display('balance');?></strong>
									</td>
								</tr>
							</thead>
							<tbody>
								<?php              
								$TotalCredit = 0;
								$TotalDebit  = 0;
								$TotalBalance  = 0;
								$openid      = 1; 
								foreach($cash_balance as $cash) :
									?>
									<tr>
										<td height="25"><?php echo $openid ;?></td>
										<td><?= $cash['HeadCode'] ?></td>
										<td><?= $cash['HeadName'] ?></td>
										<td align="right">
												<?php echo $currency. ' '.  number_format($cash['Credit'],2,'.',','); ?>
										</td>
										<td align="right">
											<?php echo $currency. ' '.  number_format($cash['Debit'],2,'.',','); ?>
										</td>
										<td class="<?= (($cash['Credit'] - $cash['Debit']) < 0 ? 'text-danger' : '') ?>" align="right">
											<?php echo $currency. ' '.   number_format(($cash['Credit'] - $cash['Debit']),2,'.',','); ?>
										</td>
									</tr>
								<?php 
								$TotalDebit += $cash['Debit'];
								$TotalCredit += $cash['Credit'];
								$TotalBalance += ($cash['Credit'] - $cash['Debit']);

								$openid++;
								endforeach; 
								?>
							</tbody>
							<tfoot>
								<tr class="table_data">
									<td colspan="3" align="right"><strong><?php echo display('total')?></strong>
									</td>
									<td align="right">
										<strong><?php echo $currency. ' '.  number_format($TotalCredit,2,'.',','); ?></strong>
									</td>
									<td align="right">
										<strong><?php echo $currency. ' '.  number_format($TotalDebit,2,'.',','); ?></strong>
									</td>
									<td align="right">
										<strong class="<?= (($TotalBalance) < 0 ? 'text-danger' : '') ?>"><?php echo $currency. ' '.  number_format($TotalBalance,2,'.',','); ?></strong>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>

			<div class="text-center" id="print">
				<input type="button" class="btn btn-warning" name="btnPrint" id="btnPrint" value="Print"
					onclick="printDivnew('printableArea');" />
			</div>
      </div>
   </div>
</div>