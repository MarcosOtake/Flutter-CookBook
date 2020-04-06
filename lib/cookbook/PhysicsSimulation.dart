/*
As simulações de física podem fazer com que as interações entre aplicativos pareçam realistas e interativas.
Por exemplo, você pode animar um widget para agir como se estivesse anexado a uma mola ou caindo com gravidade.

Esta receita demonstra como mover um widget de um ponto arrastado de volta para o centro
usando uma simulação de mola.
*/
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart'; // biblioteca necessaria

class PhysicsSimulation extends StatefulWidget {
  @override
  _PhysicsSimulationState createState() => _PhysicsSimulationState();
}

class _PhysicsSimulationState extends State<PhysicsSimulation> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Physics Simulation"),
      ),
      body: DraggableCard(
        child: FlutterLogo(
          size: 128,
        ),
      ),
    );
  }
}

/// Um ​​cartão arrastável que volta para [Alignment.center] quando é
/// liberado
class DraggableCard extends StatefulWidget {
  final Widget child;
  DraggableCard({this.child});

  @override
  _DraggableCardState createState() => _DraggableCardState();
}


class _DraggableCardState extends State<DraggableCard>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;


/// O alinhamento do cartão à medida que ele é arrastado ou animado.
  ///
  /// Enquanto o cartão está sendo arrastado, esse valor é definido como os valores calculados
  /// no retorno de chamada GestureDetector onPanUpdate. Se a animação estiver em execução,
  /// esse valor é definido como o valor da [_animation].

  Alignment _dragAlignment = Alignment.center;

  Animation<Alignment> _animation;

  /// Calculates and runs a [SpringSimulation].
  void _runAnimation(Offset pixelsPerSecond, Size size) {
    _animation = _controller.drive(
      AlignmentTween(
        begin: _dragAlignment,
        end: Alignment.center,
      ),
    );

 final unitsPerSecondX = pixelsPerSecond.dx / size.width;
    final unitsPerSecondY = pixelsPerSecond.dy / size.height;
    final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity = unitsPerSecond.distance;

    const spring = SpringDescription(
      mass: 30,
      stiffness: 1,
      damping: 1,
    );

    final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);

    _controller.animateWith(simulation);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);

    _controller.addListener(() {
      setState(() {
        _dragAlignment = _animation.value;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanDown: (details) {
        _controller.stop();
      },
      onPanUpdate: (details) {
        setState(() {
          _dragAlignment += Alignment(
            details.delta.dx / (size.width / 2),
            details.delta.dy / (size.height / 2),
          );
        });
      },
      onPanEnd: (details) {
        _runAnimation(details.velocity.pixelsPerSecond, size);
      },
      child: Align(
        alignment: _dragAlignment,
        child: Card(
          child: widget.child,
        ),
      ),
    );
  }
}






 //                                                                                    //     
 //Outhers Informations https://flutter.dev/docs/cookbook/animation/physics-simulation
 //                                                                                    // 
