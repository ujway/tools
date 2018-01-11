import codecs
import yaml

with open('swagger.sample.yaml') as file:
    obj = yaml.load(file)
    for path_key in obj['paths'].keys():
        if obj['paths'][path_key].get('options') is not None:
            del(obj['paths'][path_key]['options'])

with codecs.open('swagger-out.yaml', 'w', 'utf-8') as file:
    print(yaml.dump(obj, file, encoding='utf-8', allow_unicode=True))
