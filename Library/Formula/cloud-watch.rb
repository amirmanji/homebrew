require 'formula'

# Require ec2-api-tools to get the base class
require "#{File.dirname __FILE__}/ec2-api-tools.rb"

class CloudWatch <AmazonWebServicesFormula
  version  '1.0.9.3'
  homepage 'http://developer.amazonwebservices.com/connect/entry.jspa?externalID=2534&categoryID=251'
  url      'http://ec2-downloads.s3.amazonaws.com/CloudWatch-2010-08-01.zip'
  md5      '2ad0bc02b1ff16e541936f3676e7e847'

  def install
    standard_install
  end

  def caveats
    s = standard_instructions "AWS_CLOUDWATCH_HOME"
    s += <<-EOS.undent
      export SERVICE_HOME="$AWS_CLOUDWATCH_HOME"
    EOS
    return s
  end
end