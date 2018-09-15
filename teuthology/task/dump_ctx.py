import logging
import pprint

log = logging.getLogger(__name__)
pp = pprint.PrettyPrinter(indent=4)

def _pprint_me(thing, prefix):
    return prefix + "\n" + pp.pformat(thing)

def task(ctx, config):
    """
    Dump job context and config in teuthology log/output
    """
    log.info(_pprint_me(ctx, "Job context:"))
    log.info(_pprint_me(config, "Job config:"))
