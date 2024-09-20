require_relative '../lib/blackstack-deployment.rb'
require_relative '../config.rb'

l = BlackStack::LocalLogger.new('deploy-examples.log')

begin
    BlackStack::Deployment.source( :test,
        bash_script_filename: './ssl.blackstack',
        connect_as_root: true,
        logger: l
    )
rescue => e
    l.error(e)
end