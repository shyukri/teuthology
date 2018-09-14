"""
Print task

A task that simply prints the output that is given to it as
an argument. Can be used like any other task (under sequential,
etc...)

i.e.:

tasks:
- print: "String"
- chef: null
- print: "Another String"
"""

import logging

log = logging.getLogger(__name__)

def task(ctx, config):
    """
    Print out config argument in teuthology log/output
    """
    log.info('{config}'.format(config=config))
