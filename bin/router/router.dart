import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../handler/handler.dart';

class RouterController {
  Handler get handler{
    Router router = Router();
    AppHandler appHandler = AppHandler();

    router.get('/', appHandler.mainHandler);

    router.post('/add', appHandler.postHandler);

    router.get('/get', appHandler.getListHandler);

    router.patch('/update/<id>', appHandler.updateDataHandler);

    router.delete('/delete/<id>', appHandler.deleteDataHandler);

    return router;
  }
}