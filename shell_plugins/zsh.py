from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

from ansible.plugins.shell.sh import ShellModule as ShModule

class ShellModule(ShModule):
    def build_module_command(self, env_string, shebang, cmd, arg_path=None, rm_tmp=None):
        new_cmd = super(ShellModule, self).build_module_command(env_string, shebang, cmd, arg_path, rm_tmp)
        new_cmd = '/bin/zsh -l -c "%s"' % (new_cmd)
        return new_cmd
