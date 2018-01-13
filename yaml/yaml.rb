#!/usr/bin/ruby

require 'yaml'

# define const
YAML_IN = './yaml_in.yaml'.freeze
YAML_OUT = './yaml_out.yaml'.freeze

class YamlOperation
  def initialize(file)
    @file = file
    @data = read_yaml(@file)
  end

  #  
  # ファイルを出力する
  # @param output_file 出力ファイル
  # @return true|false 成功|失敗
  #   
  def save(output_file)
    open(output_file, 'w') do |e| 
      if YAML.dump(@data, e) then
        return true
      end
      return false
    end 
  end 

  private
    #   
    # yamlファイルを読み込む
    # @param file 入力ファイル
    # @return object|[] ファイルが存在する場合|ファイルが存在しない場合
    #   
    def read_yaml(file)
      if FileTest.exist?(file) then
        return YAML.load_file(file)
      else
        return data
      end 
    end 
end

if __FILE__ == $0
  yaml= YamlOperation.new(YAML_IN)
  yaml.save(YAML_OUT)

  p 'completed'
end
