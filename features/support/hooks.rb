
at_exit do
  time = Time.now
  ReportBuilder.configure do |config|
    config.json_path = 'relatorios/report.json'
    config.report_path = 'relatorios/cucumber_relatorio'
    config.report_types = [:html]
    config.report_title = 'Testes Automatizados Rest'
    config.compress_images = false
    config.color = 'blue'
    config.additional_info = {:Navegador => 'Chrome', :Ambiente => 'QA', 'Report generated' => time}
  end
  ReportBuilder.build_report
end
