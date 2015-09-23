# ws-phonebook-cookbook

Installs/Configures phonebook

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ws-phonebook']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### ws-phonebook::default

Include `ws-phonebook` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[ws-phonebook::default]"
  ]
}
```

## License and Authors

Author:: Christoph Lukas (<christoph.lukas@gmx.net>)
# chef-ws-phonebook
